class AddUserIdToFriends1s < ActiveRecord::Migration[6.1]
  def change
    add_column :friends1s, :user_id, :integer
    add_index :friends1s, :user_id
  end
end
