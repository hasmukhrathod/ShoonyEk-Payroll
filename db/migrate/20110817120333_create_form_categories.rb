class CreateFormCategories < ActiveRecord::Migration
  def self.up
    create_table :form_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :form_categories
  end
end
