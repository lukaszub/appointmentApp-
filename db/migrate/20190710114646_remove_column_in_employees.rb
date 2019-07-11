class RemoveColumnInEmployees < ActiveRecord::Migration[5.2]
  def change
  	remove_column :employees, :second_name
  end
end
