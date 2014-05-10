# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :admin do
    firstname 'admin firstname'
    middlename 'admin middlename'
    lastname 'admin lastname'
    email 'admin@example.com'
    facebook_account 'www.facebook.com/12334'
    password 'password'
    password_confirmation 'password'
    admin true
  end
end
