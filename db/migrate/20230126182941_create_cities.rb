class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :desc
      t.string :slug
      t.integer :region_id

      t.timestamps
    end
  end
end
