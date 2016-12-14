class AddColumnsToPilgrim < ActiveRecord::Migration
  def change
    add_column :pilgrims, :copilgrim_id, :integer
  end
end
