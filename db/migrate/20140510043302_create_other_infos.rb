class CreateOtherInfos < ActiveRecord::Migration
  def change
    create_table :other_infos do |t|
      t.string :spouse_name
      t.string :spouse_contact_number
      t.string :fathername
      t.string :mothername
      t.string :father_contact_number
      t.string :mother_contact_number
      t.string :parents_address

      t.timestamps
    end
  end
end
