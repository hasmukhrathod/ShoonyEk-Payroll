class CreateLeaveManagements < ActiveRecord::Migration
  def self.up
    create_table :leave_managements do |t|
      t.integer :employee_master_id
      t.date :leave_taken_on_date
      t.date :leave_till_date
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :leave_managements
  end
end
