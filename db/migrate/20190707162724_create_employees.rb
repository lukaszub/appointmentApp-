class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|

    	t.string  :first_name
    	t.string	:second_name
    	t.string	:position	
      t.timestamps
    end
  end
end
