class RemoveDateFromPayments < ActiveRecord::Migration
  def up
    remove_column :payments, :date
  end

  def down
    add_column :payments, :date, :date
  end
end
