class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #adds a new column to table 'users', called 'username', and the type of: 'string'
    add_index :users, :username, unique: true #saying "then i want you to store(index) usernames for quick look up, making sure all are unique!"
  end
end
