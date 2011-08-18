class Department < ActiveRecord::Base

 validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
 validates :manager, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
  
 has_many:employee_masters


  def self.validate_field(field, value)
    validity = Department.new(field => value)
    validity.valid?
    if validity.errors.on field
      ajaxResponse = {:valid => false, field.to_sym => validity.errors[field]}
    else
      ajaxResponse = {:valid => true}
    end  
  end
    


end
