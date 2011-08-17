class CreateEsiMasters < ActiveRecord::Migration
  def self.up
    create_table :esi_masters do |t|
      t.integer :book_no
      t.integer :stamp_no
      t.integer :employer_code
      t.integer :branch_id
      t.integer :employee_master_id
      t.text :remarks
      t.string :medical_officer
      t.string :industry_code

      t.timestamps
    end
  end

  def self.down
    drop_table :esi_masters
  end
end
