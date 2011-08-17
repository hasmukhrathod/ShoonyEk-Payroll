class ChangeDataTypeForBookNoStampNo < ActiveRecord::Migration
  def self.up
    change_table :esi_masters do |t|
      t.change :book_no, :string
      t.change :stamp_no, :string
    end
  end

  def self.down
    change_table :esi_masters do |t|
      t.change :book_no, :integer
      t.change :stamp_no, :integer
    end
  end
end
