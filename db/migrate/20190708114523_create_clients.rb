class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
    	t.string :first_name
    	t.string :second_name
    	t.string :email
    	t.string :contact_number
      t.timestamps
    end
  end
end
