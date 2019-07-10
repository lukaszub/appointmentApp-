class EmployeesController < ApplicationController
	def new
		@employee = current_user.employees.build
	end

	def create
		@employee = current_user.employees.build(employee_params)	
		if @employee.save
			flash[:success] = "Employee created!"
			redirect_to root_url
		else
			render 'new'
		end
	end


	private

			def employee_params
				params.require(:employee).permit(:first_name, :second_name, :position)	
			end

end
