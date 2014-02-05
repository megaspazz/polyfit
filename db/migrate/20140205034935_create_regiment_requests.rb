class CreateRegimentRequests < ActiveRecord::Migration
  def change
    create_table :regiment_requests do |t|
      t.string :opt0
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.string :opt4
      t.string :opt5
      t.string :opt6
      t.string :opt7

      t.timestamps
    end
  end
end
