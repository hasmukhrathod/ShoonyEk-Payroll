class AddLeaveTypeAndAlternateContactNumberToLeaveManagements < ActiveRecord::Migration
  def self.up
    add_column :leave_managements, :leave_type, :string
    add_column :leave_managements, :alternate_contact_number, :string
  end

  def self.down
    remove_column :leave_managements, :alternate_contact_number
    remove_column :leave_managements, :leave_type
  end
end
