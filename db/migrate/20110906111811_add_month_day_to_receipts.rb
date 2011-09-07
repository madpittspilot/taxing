class AddMonthDayToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :rec_month, :integer
    add_column :receipts, :rec_day, :integer
  end
end
