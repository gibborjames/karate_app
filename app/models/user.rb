class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  validates :firstname, presence: true
  validates :middlename, presence: true
  validates :lastname, presence: true
  validates :facebook_account, presence: true

  # relationship
  has_one :personal_info
  has_one :other_info
  has_one :case_of_emergency_info

  def fullname
    "#{self.lastname} #{self.firstname}"
  end
end
