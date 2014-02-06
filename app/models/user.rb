class User < ActiveRecord::Base
  has_many :user_favorites
  has_many :regiments, through: :user_favorites

  validates :firstName, presence: true
  validates :lastName, presence: true

  # Use a regex to validate the email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  # minimum password length is 5
  has_secure_password
  validates :password, length: { minimum: 5 }
end
