class ProjectStructure < Template
  field :template_id, :type => String
  
  embedded_in :project
end