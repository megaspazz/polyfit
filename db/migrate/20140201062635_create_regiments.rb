class CreateRegiments < ActiveRecord::Migration
  def change
    create_table :regiments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
