class Exercise < ActiveRecord::Base
  has_many :regimentExercises
  has_many :regiments, through: :regiment_exercises
end