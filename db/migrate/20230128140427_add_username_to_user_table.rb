class AddUsernameToUserTable < ActiveRecord::Migration[7.0]
  def change
      add_column :users, :username, :string, unique: true, :null => false
  end
end
