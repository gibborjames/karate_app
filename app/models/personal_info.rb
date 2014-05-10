class PersonalInfo < ActiveRecord::Base

  # Relationship
  belongs_to :user
end
