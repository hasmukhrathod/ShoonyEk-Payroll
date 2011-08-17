class Designation < ActiveRecord::Base
  has_many :salaries, :dependent => :destroy
  accepts_nested_attributes_for :salaries, :reject_if => lambda { |a| a[:basic].blank? }, :allow_destroy => true
  has_many :departments
  has_one :forms
end
