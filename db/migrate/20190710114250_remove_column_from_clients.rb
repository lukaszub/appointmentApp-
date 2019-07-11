class RemoveColumnFromClients < ActiveRecord::Migration[5.2]
  def change
  	remove_column :clients, :second_name
  end
end
