# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :announcement do
    title "MyString"
    description "MyString"
    is_announce false
    user_id 1
  end
end
