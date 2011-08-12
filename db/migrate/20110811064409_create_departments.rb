class CreateDepartments < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.string   :dept_id
      t.string   :name
      t.text     :detail
      t.string   :manager

      t.timestamps
    end
  end

  def self.down
    drop_table :departments
  end
end
