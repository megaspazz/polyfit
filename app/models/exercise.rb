class Exercise < ActiveRecord::Base
  has_many :regiment_exercises
  has_many :regiments, through: :regiment_exercises
end
