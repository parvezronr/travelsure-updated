class AddColumnToPilgrim < ActiveRecord::Migration
  def change
    add_column :pilgrims, :package_id, :integer
  end
end
