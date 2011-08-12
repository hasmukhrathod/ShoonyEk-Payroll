class AddParentIdToEmployeeMasters < ActiveRecord::Migration
  def self.up
    add_column :employee_masters, :parent_id, :integer
  end

  def self.down
    remove_column :employee_masters, :parent_id
  end
end
