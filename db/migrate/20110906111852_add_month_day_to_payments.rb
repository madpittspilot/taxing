class AddMonthDayToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :pay_month, :integer
    add_column :payments, :pay_day, :integer
  end
end
