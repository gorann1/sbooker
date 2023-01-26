class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.text :desc
      t.string :slug
      t.integer :country_id, null: false

      t.timestamps
    end
  end
end
