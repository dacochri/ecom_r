class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :product_id
      t.decimal :value
      t.string :discount_type
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
