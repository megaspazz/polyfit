class CreateRegimentExercises < ActiveRecord::Migration
  def change
    create_table :regiment_exercises do |t|

      t.timestamps
    end
  end
end
