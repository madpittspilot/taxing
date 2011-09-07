class CreateSuburbs < ActiveRecord::Migration
  def change
    create_table :suburbs do |t|
      t.string :suburb
      t.string :postcode
      t.integer :state_id

      t.timestamps
    end
  end
end
