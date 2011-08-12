class CreateSalaries < ActiveRecord::Migration
  def self.up
    create_table :salaries do |t|
      t.float :basic
      t.integer :designation_id
      t.float :l_t_a
      t.float :h_r_a
      t.float :p_f
      t.float :bonus
 
      t.timestamps
    end
  end

  def self.down
    drop_table :salaries
  end
end
