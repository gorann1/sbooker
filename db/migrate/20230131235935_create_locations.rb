class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.integer :type_id
      t.integer :category_id
      t.integer :visibility_id
      t.integer :depth_id
      t.integer :current_id
      t.decimal :ltd, :precision => 15, :scale => 10
      t.decimal :lng, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
