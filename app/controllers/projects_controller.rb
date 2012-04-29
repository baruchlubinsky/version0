class ProjectsController < SecureController
  def new
    @user = User.find(params[:user_id])
    @project = Project.new
    @templates = Template.all.to_a
    render :layout => 'layouts/empty'
  end
  
  def create
    @project = Project.new
    @user = User.find(params[:user_id])
    t = Template.where(:name => params[:project][:template_id]).first
    @project.project_structure = ProjectStructure.new(:child_elements => t.copy_structure, :name => t.name)
    #.child_elements = t.copy_structure
    #@project.project_structure.name = t.name
    @project.name = params[:project][:name]
    
    member = MemberObject.new
    member.name = @user.name
    member.job_title = params[:role]
        
    @user.matrix_objects << member
      
    @project.project_structure.matrix_objects << member
      
    @user.projects << @project
    
    member.save!
    @project.save!
    @user.save!
    
    @slice = Slice.new
    
    @workspace = Workspace.new
    
    @project.workspaces << @workspace
    @user.workspaces << @workspace
    @slice.workspace = @workspace
    
    nav = Navigation.new
    nav.name = @project.name
    nav.nav_id = @slice.template.id
    @slice.navigations << nav
    
    @workspace.save!
    @slice.save!
    
    redirect_to slices_path(@slice)
  end
  
  def show
    w = Workspace.where(:project_id => params[:id], :user_id => session[:user_id])
    if w.count == 0
      @slice = Slice.new
      workspace = Workspace.new
      workspace.project = Project.find(params[:id])
      workspace.user = User.find(:user_id => session[:user_id])
      @slice.workspace = workspace
      @slice.save
    else
      @slice = Slice.find(w.first.slice_id)
    end    
    redirect_to slices_path(@slice)
  end
  
end