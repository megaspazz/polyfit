class AddAttachmentVideoToExercises < ActiveRecord::Migration
  def self.up
    change_table :exercises do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :exercises, :video
  end
end
