class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :userName
      t.string :country
      t.string :city
      t.date :dateOfBirth
      t.string :email
      t.string :aboutSelf
      t.string :password_digest

      t.timestamps
    end
  end
end
