class CreateCurrents < ActiveRecord::Migration[7.0]
  def change
    create_table :currents do |t|
      t.string :name
      t.text :slug

      t.timestamps
    end
  end
end
