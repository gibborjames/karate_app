# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    firstname 'james'
    middlename 'umil'
    lastname 'delacruz'
    email 'user@example.com'
    password 'password'
    password_confirmation 'password'
    admin false
  end
end
