class CreatePricelimits < ActiveRecord::Migration
  def change
    create_table :pricelimits do |t|
      t.integer :price

      t.timestamps null: false
    end
  end
end
