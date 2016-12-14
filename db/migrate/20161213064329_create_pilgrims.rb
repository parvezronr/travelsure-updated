class CreatePilgrims < ActiveRecord::Migration
  def change
    create_table :pilgrims do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :passport_number
      t.string :gender
      t.string :age_group
      t.string :email
      t.string :mobile_number

      t.timestamps null: false
    end
  end
end
