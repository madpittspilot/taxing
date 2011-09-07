class RemoveDateFromReceipts < ActiveRecord::Migration
  def up
    remove_column :receipts, :date
  end

  def down
    add_column :receipts, :date, :date
  end
end
