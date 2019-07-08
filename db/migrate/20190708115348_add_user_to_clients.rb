class AddUserToClients < ActiveRecord::Migration[5.2]
  def change
  	add_reference :clients, :user
  end
end
