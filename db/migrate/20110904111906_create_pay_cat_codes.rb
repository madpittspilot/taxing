class CreatePayCatCodes < ActiveRecord::Migration
  def change
    create_table :pay_cat_codes do |t|
      t.string :pay_category

      t.timestamps
    end
  end
end
