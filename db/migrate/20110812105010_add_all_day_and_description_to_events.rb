class AddAllDayAndDescriptionToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :all_day, :boolean
    add_column :events, :description, :text
  end

  def self.down
    remove_column :events, :description
    remove_column :events, :all_day
  end
end
