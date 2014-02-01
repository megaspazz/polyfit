class Regiment < ActiveRecord::Base
  has_many :regiment_exercises
  has_many :exercises, through: :regiment_exercises
end
