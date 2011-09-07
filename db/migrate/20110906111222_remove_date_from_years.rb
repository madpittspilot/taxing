class RemoveDateFromYears < ActiveRecord::Migration
  def up
    remove_column :years, :date
  end

  def down
    add_column :years, :date, :date
  end
end
