class AddFormCategoryIdToForms < ActiveRecord::Migration
  def self.up
    add_column :forms, :form_category_id, :integer
  end

  def self.down
    remove_column :forms, :form_category_id
  end
end
