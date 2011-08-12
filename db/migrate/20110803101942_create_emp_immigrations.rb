class CreateEmpImmigrations < ActiveRecord::Migration
  def self.up
    create_table :emp_immigrations do |t|
      t.integer :employee_master_id
      t.string :passport_no
      t.date :issued_date
      t.date :expiry_date
      t.string :citizenship

      t.timestamps
    end
  end

  def self.down
    drop_table :emp_immigrations
  end
end
