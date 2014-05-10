class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :civil_status
      t.string :height
      t.string :weight
      t.string :gender
      t.string :nationality
      t.string :religion
      t.string :address
      t.string :contact_number
      t.date :date_started_in_karate

      t.timestamps
    end
  end
end
