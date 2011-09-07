class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :date
      t.integer :year_id
      t.integer :cat_code_id
      t.string :pay_details
      t.integer :pay_method_id
      t.string :ref_no
      t.decimal :pay_amount, precision: 9, scale: 2
      t.integer :gst_cat_id
      t.decimal :gst_amount, precision: 7, scale: 2
      t.decimal :priv_use_percent, precision: 5, scale: 2
      t.decimal :priv_use_amount, precision: 9, scale: 2

      t.timestamps
    end
  end
end
