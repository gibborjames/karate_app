# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personal_info do
    date_of_birth "2014-05-10"
    place_of_birth "MyString"
    civil_status "MyString"
    height "MyString"
    weight "MyString"
    gender "MyString"
    nationality "MyString"
    religion "MyString"
    address "MyString"
    contact_number "MyString"
    date_started_in_karate "2014-05-10"
  end
end
