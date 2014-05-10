class AddColumnIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personal_info_id, :integer
    add_column :users, :other_info_id, :integer
    add_column :users, :case_of_emergency_info_id, :integer
  end
end
