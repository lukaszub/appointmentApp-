class ChangeColumnNameInEmployees < ActiveRecord::Migration[5.2]
  def change
  	rename_column :employees, :first_name, :name
  end
end
