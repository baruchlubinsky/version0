class CallibrationObject < MatrixObject
  field :author, :type => String
  field :description, :type => String
  field :last_change, :type => Date
  
  def matrix_attributes
    { :author => self.author, :description => self.description, :last_change => self.last_change }
  end
  
  def initialize
    super
    self.object_type = "callibration"
  end
  
end