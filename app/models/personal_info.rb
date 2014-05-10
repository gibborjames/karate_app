class PersonalInfo < ActiveRecord::Base

  # Relationship
  has_one :user
end
