class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :employee_master_id
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
