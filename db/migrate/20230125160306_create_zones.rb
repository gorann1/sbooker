class CreateZones < ActiveRecord::Migration[7.0]
  def change
    create_table :zones do |t|
      t.string :name, null: false
      t.text :desc, null: true
      t.string :slug, null: false

      t.timestamps
    end
  end
end
