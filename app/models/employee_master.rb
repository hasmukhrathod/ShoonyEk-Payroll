class EmployeeMaster < ActiveRecord::Base
  validates_presence_of :emp_name
  validates_uniqueness_of:emp_name



  acts_as_nested_set

  belongs_to :designation
  belongs_to :department

  has_many :leave_managements
  has_many :events
  has_many :resumes, :dependent => :destroy
  has_many :educations, :dependent => :destroy
  has_many :emp_contacts, :dependent => :destroy
  has_many :emp_immigrations, :dependent => :destroy


  accepts_nested_attributes_for :resumes,
                                :reject_if => lambda { |a| a[:skill].blank? },
                                :allow_destroy => true

  accepts_nested_attributes_for :educations

  accepts_nested_attributes_for :emp_contacts,
                                :reject_if => lambda { |a| a[:state].blank? },
                                :allow_destroy => true

  accepts_nested_attributes_for :emp_immigrations,
                                :reject_if => lambda { |a| a[:passport_no].blank? },
                                :allow_destroy => true


  #def self.serial_number
  #  Digest::SHA2.hexdigest Time.now.to_s
  #end

 #def serial_number
  #  "PLN-%.6d" % emp_id
 # end

 # def initialize(emp_id)
 #   if emp_id.blank?
 #      emp_id = 1001 
 #     Rails.logger.info "hfsdfh"+emp_id.inspect 
 #   end
 # end



  def self.serial_number
    001
  end



end
