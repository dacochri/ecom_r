class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :text
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
