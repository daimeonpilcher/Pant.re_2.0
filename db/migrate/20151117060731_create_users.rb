class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :weight
      t.integer :height
      t.integer :body_fat
      t.date :dob

      t.timestamps null: false
    end
  end
end
