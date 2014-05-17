class RemoveColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :personal_info_id, :integer
    remove_column :users, :other_info_id, :integer
    remove_column :users, :case_of_emergency_info_id, :integer
  end
end
