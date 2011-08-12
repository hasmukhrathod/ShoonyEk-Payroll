class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.integer  :employee_master_id
      t.string   :emp_education
      t.float    :marks_class
      t.date     :year
      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
