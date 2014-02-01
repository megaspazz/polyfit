class CreateRegimentExercises < ActiveRecord::Migration
  def change
    create_table :regiment_exercises do |t|
      t.belongs_to :regiment
      t.belongs_to :exercise

      t.timestamps
    end
  end
end
