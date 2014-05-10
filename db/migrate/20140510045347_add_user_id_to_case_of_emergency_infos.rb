class AddUserIdToCaseOfEmergencyInfos < ActiveRecord::Migration
  def change
    add_column :case_of_emergency_infos, :user_id, :integer
  end
end
