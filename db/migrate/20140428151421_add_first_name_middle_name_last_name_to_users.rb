class AddFirstNameMiddleNameLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :middlename, :string
  end
end
