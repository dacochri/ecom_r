class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :reference
      t.string :reference_to
      t.decimal :value
      t.string :discount_type
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
