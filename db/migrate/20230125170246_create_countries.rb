class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name, null:false
      t.text :desc
      t.string :slug,  null:false
      t.integer :zone_id, null:false

      t.timestamps
    end
  end
end
