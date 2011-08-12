class EmpContact < ActiveRecord::Base
  validates_presence_of :state

  belongs_to :employee_master
end
