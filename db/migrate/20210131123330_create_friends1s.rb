class CreateFriends1s < ActiveRecord::Migration[6.1]
  def change
    create_table :friends1s do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :instagram

      t.timestamps
    end
  end
end
