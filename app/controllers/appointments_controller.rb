class AppointmentsController < ApplicationController
	before_action :set_appointment, only: [:show, :edit, :update, :destroy]

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
			flash.now[:alert] = "choose appointment time is not available"
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @appointment.update(appointment_params)
			redirect_to appointments_path, notice: "Appointment updated."
		else
			render 'new'
		end	
	end

	def destroy
		@appointment.destroy
		redirect_to appointments_path, notice: "Appointment deleted."	
	end


	private

			def appointment_params
				params.require(:appointment).permit(:date, :time, :end_of_appointment, :slot, :client_id, :employee_id, :description)	
			end

			def set_appointment
				@appointment = Appointment.find(params[:id])	
			end

end
