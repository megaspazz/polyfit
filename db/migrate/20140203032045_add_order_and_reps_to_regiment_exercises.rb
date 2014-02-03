class AddOrderAndRepsToRegimentExercises < ActiveRecord::Migration
  def change
    add_column :regiment_exercises, :order, :integer
    add_column :regiment_exercises, :reps, :integer
  end
end
