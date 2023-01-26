class CreateVisibilities < ActiveRecord::Migration[7.0]
  def change
    create_table :visibilities do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
