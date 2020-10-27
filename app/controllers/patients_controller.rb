class PatientsController < ApplicationController

    def index 
        patients = Patient.all
        render json: patients, except: [:create_at, :updated_at]
    end 

    def show 
        patient = Patient.find(params[:id])
    end
    
end
