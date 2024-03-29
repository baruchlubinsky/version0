class ContentObject < MatrixObject
  field :content_type, :type => String
  field :author, :type => String
  field :description, :type => String
  
  def matrix_attributes
    { :content_type => self.content_type, :author => self.author, :description => self.description }
  end
  
  def initialize
    super
    self.object_type = "content"
  end
  
end