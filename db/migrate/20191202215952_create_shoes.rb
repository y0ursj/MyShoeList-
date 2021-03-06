class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.float :price
      t.text :image_url
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
