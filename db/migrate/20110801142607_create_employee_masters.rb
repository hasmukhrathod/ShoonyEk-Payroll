class CreateEmployeeMasters < ActiveRecord::Migration
  def self.up
    create_table :employee_masters do |t|
      t.integer :emp_id
      t.string  :emp_name
      t.string  :nick_name
      t.string  :gender
      t.string  :nationality
      t.string  :martial_status
      t.string  :driving_licence_number
      t.date    :driving_licence_expiry_date
      t.string  :pan_number
      t.string  :photograph
      t.integer :designation_id
      t.date    :d_o_b
      t.date    :d_o_j
      t.integer :lft
      t.integer :rgt
      t.integer :department_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employee_masters
  end
end
