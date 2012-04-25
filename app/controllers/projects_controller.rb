class ProjectsController < ApplicationController
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
    member.name = User.name
    member.job_title = params[:project][:role]
      
    @user.matrix_objects << member
      
    @project.project_structure.matrix_objects << member
      
    @user.projects << @project
    
    @project.save!
    @user.save!
    
    @slice = Slice.new
    
    @workspace = Workspace.new
    
    @project.workspaces << @workspace
    @user.workspaces << @workspace
    @slice.workspace = @workspace
    
    nav = Navigation.new
    nav.name = @slice.template.name
    nav.nav_id = @slice.template.id
    @slice.navigations << nav
    
    @workspace.save!
    @slice.save!
    
    redirect_to slices_path(@slice)
  end
  
end