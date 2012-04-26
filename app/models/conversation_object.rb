class ConversationObject < MatrixObject
  field :author, :type => String
  field :description, :type => String
  field :last_update, :type => Date
  
  def matrix_attributes
    { :author => self.author, :description => self.description, :last_update => self.last_update }
  end
  
  def initialize
      super
      self.object_type = "conversation"
    end
  
end