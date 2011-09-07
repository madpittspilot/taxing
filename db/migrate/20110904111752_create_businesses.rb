class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :tfn
      t.string :abn
      t.string :postal_addr_1
      t.string :postal_addr_2
      t.integer :postal_addr_suburb_id
      t.string :street_addr_1
      t.string :street_addr_2
      t.integer :street_addr_suburb_id
      t.string :email

      t.timestamps
    end
  end
end
