class RemoveColumnFromAgency < ActiveRecord::Migration
  def change
    remove_column :agencies, :user_id, :integer
  end
end
