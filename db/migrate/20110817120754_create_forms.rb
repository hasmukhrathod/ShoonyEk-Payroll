class CreateForms < ActiveRecord::Migration
  def self.up
    create_table :forms do |t|
      t.integer :book_no
      t.string :stamp_no
      t.string :employee_code
      t.integer :branch_id
      t.integer :employee_master_id
      t.text :remarks
      t.string :madical_officer
      t.string :industry_code
      t.string :address_1
      t.string :address_2

      t.timestamps
    end
  end

  def self.down
    drop_table :forms
  end
end
