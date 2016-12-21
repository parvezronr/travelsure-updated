class AddColumnsToAgent < ActiveRecord::Migration
  def change
    add_column :agents, :approve, :boolean,:default => false, :null => false
  end
end
