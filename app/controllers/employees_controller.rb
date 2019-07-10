class EmployeesController < ApplicationController
	before_action :set_employee, only: [:show, :edit, :update, :destroy]

	def new
		@employee = current_user.employees.build
	end

	def index
    @employee = Employee.where(user_id: current_user)  
 	end

 	def show
  end

	def create
		@employee = current_user.employees.build(employee_params)	
		if @employee.save
			redirect_to employees_path, notice: "Employee created!"
		else
			render 'new'
		end
	end

	def edit  
 	end

 	def update
    if @employee.update(employee_params) 
      redirect_to employees_path, notice: "Client details updated."
    else
      render 'new'
    end 
  end

  def destroy
    @employee.destroy
    redirect_to clients_path, notice: "Client deleted." 
  end


	private

			def set_employee
				@employee = Employee.find(params[:id])	
			end

			def employee_params
				params.require(:employee).permit(:first_name, :second_name, :position)	
			end

end
