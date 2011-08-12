class AddStatusToLeaveManagements < ActiveRecord::Migration
  def self.up
    add_column :leave_managements, :status, :string
  end

  def self.down
    remove_column :leave_managements, :status
  end
end
