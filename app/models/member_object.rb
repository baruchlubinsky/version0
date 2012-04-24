class MemberObject < MatrixObject
  field :company_name, :type => String
  field :job_title, :type => String
  field :expertise_profile, :type => String
  field :affiliations, :type => String
  #field :recent_actions, :type => String
  
  def matrix_attributes
    super.update({ :company_name => self.company_name, :job_title => self.job_title, 
     :expertise_profile => self.expertise_profile, :affiliations => self.affiliations })
  end
  
end