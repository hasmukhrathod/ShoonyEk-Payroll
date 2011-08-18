class Education < ActiveRecord::Base
  validates_presence_of :year
  belongs_to :employee_master
end
