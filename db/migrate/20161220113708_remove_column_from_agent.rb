class RemoveColumnFromAgent < ActiveRecord::Migration
  def change
    remove_column :agents, :approve, :boolean
  end
end
