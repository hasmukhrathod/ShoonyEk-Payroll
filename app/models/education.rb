class Education < ActiveRecord::Base
  validates_presence_of :year
  belongs_to :resume
end
