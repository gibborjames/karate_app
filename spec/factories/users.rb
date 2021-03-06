# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    firstname 'james'
    middlename 'umil'
    lastname 'delacruz'
    sequence(:email) {|n| "random-email#{n}@email.com"}
    facebook_account 'www.facebook.com/12334'
    password 'password'
    password_confirmation 'password'
    admin false
    association(:case_of_emergency_info)
    association(:other_info)
    association(:personal_info)
  end
end
