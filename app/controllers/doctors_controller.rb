class DoctorsController < ApplicationController

    def index 
        doctors = Doctor.all
        render json: doctors, except: [:create_at, :updated_at]
    end 

    def show 
        doctor = Doctor.find(params[:id])
        render json: doctor, except: [:create_at, :updated_at]
    end 
end
