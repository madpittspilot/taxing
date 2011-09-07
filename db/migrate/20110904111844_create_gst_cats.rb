class CreateGstCats < ActiveRecord::Migration
  def change
    create_table :gst_cats do |t|
      t.string :gst_category
      t.decimal :gst_percent, precision: 5, scale: 2

      t.timestamps
    end
  end
end
