class AddLockableToDeviseV2 < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :failed_attempts, :integer
  end
end
