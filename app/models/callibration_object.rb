class CallibrationObject < MatrixObject
  field :author, :type => String
  field :description, :type => String
  field :last_change, :type => Date
  
  def matrix_attributes
    super.update({ :author => self.author, :description => self.description })
  end
  
end