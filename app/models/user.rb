class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_favorites
  has_many :regiments, through: :user_favorites

  #validates :firstName, presence: true
  #validates :lastName, presence: true
  
  validates :username, presence: true, uniqueness: { case_sensitive: false }

  # Use a regex to validate the email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  # bcryp authentication, minimum password length is 5
  #has_secure_password
  #validates :password, length: { minimum: 5 }

  #edit database authentication
  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
      else
        where(conditions).first
      end
    end
end
