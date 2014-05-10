class AddUserIdToOtherInfos < ActiveRecord::Migration
  def change
    add_column :other_infos, :user_id, :integer
  end
end
