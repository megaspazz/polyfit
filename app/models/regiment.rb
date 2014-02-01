class Regiment < ActiveRecord::Base
  has_many :regimentExercises
  has_many :exercises, through: :regiment_exercises
end
