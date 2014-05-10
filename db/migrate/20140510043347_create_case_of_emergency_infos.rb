class CreateCaseOfEmergencyInfos < ActiveRecord::Migration
  def change
    create_table :case_of_emergency_infos do |t|
      t.string :name
      t.string :relationship
      t.string :contact_no
      t.string :address

      t.timestamps
    end
  end
end
