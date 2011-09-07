class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.date :year
      t.integer :business_id

      t.timestamps
    end
  end
end
