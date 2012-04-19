class MemberObject < MatrixObject
  field :comapny_name, :type => String
  field :job_title, :type => String
  field :expertise_profile, :type => String
  field :affiliations, :type => String
  field :recent_actions, :type => String
  
  def matix_attributes
    parent.matrix_attributes << { :company_name => @company_name }
  end
  
end