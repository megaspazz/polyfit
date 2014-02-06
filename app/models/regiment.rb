class Regiment < ActiveRecord::Base
  has_many :regiment_exercises
  has_many :exercises, through: :regiment_exercises

  has_many :user_favorites
  has_many :users, through: :user_favorites
end
