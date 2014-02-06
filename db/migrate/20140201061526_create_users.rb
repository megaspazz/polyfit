class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :age, limit: 1
      t.integer :gender, limit: 1

      t.string :username
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      
      t.timestamps
    end
  end
end
