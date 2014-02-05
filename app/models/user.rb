class User < ActiveRecord::Base
  validates :firstName, presence: true
  validates :lastName, presence: true

  VALID_EMAIL_REGIX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGIX }, uniqueness: { case_sensitive: false }
end
