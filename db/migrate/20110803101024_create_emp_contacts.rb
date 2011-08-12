class CreateEmpContacts < ActiveRecord::Migration
  def self.up
    create_table :emp_contacts do |t|
      t.integer :employee_master_id
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :home_telephone
      t.string :mobile
      t.string :work_telephone
      t.string :work_email
      t.string :other_email

      t.timestamps
    end
  end

  def self.down
    drop_table :emp_contacts
  end
end
