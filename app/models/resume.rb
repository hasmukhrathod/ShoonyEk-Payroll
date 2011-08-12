class Resume < ActiveRecord::Base
  belongs_to :employee_master
  #has_many :educations, :dependent => :destroy
  #accepts_nested_attributes_for :educations, :reject_if => lambda { |a| a[:ssc_marks].blank? }, :allow_destroy => true
end
