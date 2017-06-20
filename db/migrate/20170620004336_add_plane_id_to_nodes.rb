class AddPlaneIdToNodes < ActiveRecord::Migration[5.1]
  def change
    add_column :nodes, :plane_id, :integer
  end
end
