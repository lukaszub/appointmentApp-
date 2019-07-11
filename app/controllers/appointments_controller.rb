class AppointmentsController < ApplicationController
	def new
		@appointment = current_user.appointments.build
	end

	def index
    @appointment = Appointment.where(user_id: current_user)  
  end

	def create
		@appointment = 	current_user.appointments.build(appointment_params)
		if @appointment.save
			redirect_to appointments_path, notice: "Appointment created."
		else
			render 'new'
		end
	end


	private

			def appointment_params
				params.require(:appointment).permit(:date, :time, :slot, :client_id, :employee_id)	
			end
end
