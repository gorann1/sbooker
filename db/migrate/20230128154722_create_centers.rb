class CreateCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :centers do |t|
      t.string :name, unique: true
      t.string :slug
      t.integer :city_id, null:false
      t.string :address
      t.string :email, unique: true
      t.decimal :ltd, :precision => 15, :scale => 10
      t.decimal :lng, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
