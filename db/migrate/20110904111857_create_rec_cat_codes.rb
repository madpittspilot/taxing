class CreateRecCatCodes < ActiveRecord::Migration
  def change
    create_table :rec_cat_codes do |t|
      t.string :rec_category

      t.timestamps
    end
  end
end
