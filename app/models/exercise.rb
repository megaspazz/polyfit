class Exercise < ActiveRecord::Base
  has_many :regiment_exercises
  has_many :regiments, through: :regiment_exercises

  has_attached_file :video
  validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
end