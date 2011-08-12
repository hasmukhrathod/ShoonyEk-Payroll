class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|

      t.integer :employee_master_id
      t.text :skill
      t.text :work_experience
      t.string :last_company_working_name
      t.date :working_from
      t.date :working_till 
      t.timestamps
    end
  end

  def self.down
    drop_table :resumes
  end
end
