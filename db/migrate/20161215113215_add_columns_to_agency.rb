class AddColumnsToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :agent_id, :integer
  end
end
