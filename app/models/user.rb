class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  validates :firstname, presence: true
  validates :middlename, presence: true
  validates :lastname, presence: true
  validates :facebook_account, presence: true

  # relationship
  belongs_to :personal_info
  belongs_to :other_info
  belongs_to :case_of_emergency_info
end
