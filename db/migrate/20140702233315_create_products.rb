class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :brand_id
      t.string :name
      t.string :image
      t.decimal :price
      t.integer :quantity
      t.string :description

      t.timestamps
    end
  end
end
