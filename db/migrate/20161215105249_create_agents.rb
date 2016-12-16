class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :mobile_number
      t.string :id_proof
      t.string :agency_name
      t.string :agency_phone

      t.timestamps null: false
    end
  end
end
