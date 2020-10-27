class AppointmentsController < ApplicationController

    def index 
        appointments = Appointment.all
        render json: appointments, except: [:create_at, :updated_at]

    end 


    def create
        appointment = Appointment.create!(appointment_params)
        render json: appointment.
    end 

    def update
        appointment = Appointment.find(params[:id])
        appointment.update!(appointment_params)
        render json: {}
        
    end 

    def destroy 
        appointment = Appointment.find(params[:id])
        
        appointment.destroy

        render json:{}
    end 

    private 

    def appointment_params
        params.require(:appointment).permit(:doctor_id, :patient_id, :description, :time, :date)
    end 
end
