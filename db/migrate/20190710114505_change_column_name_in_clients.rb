class ChangeColumnNameInClients < ActiveRecord::Migration[5.2]
  def change
  	rename_column :clients, :first_name, :name
  end
end
