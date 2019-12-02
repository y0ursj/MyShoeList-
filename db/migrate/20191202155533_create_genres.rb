class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.string :description
      t.text :image_url

      t.timestamps
    end
  end
end
