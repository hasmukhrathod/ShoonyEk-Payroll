class LeaveManagement < ActiveRecord::Base

  belongs_to :employee_master
  has_many :events

  def employee_master_name
    employee_master.emp_first_name if employee_master
  end

  def employee_master_name=(emp_first_name)
    self.employee_master = EmployeeMaster.find_or_create_by_emp_first_name(emp_first_name) unless emp_first_name.blank?
  end



end
