class AppointmentsController < ApplicationController

    def index
        @appointments=Appointment.all
    end

    def new
         @appointment=Appointment.new
         @appointment.build_patient
    end

    def create
         @appointment=Appointment.new(appointment_params)
         if @appointment.save!
             redirect_to appointments_path
     else
             render :new
         end
    end

    def edit
        @appointment=Appointment.find(params[:id])
    end

    def update
        @appointment=Appointment.find(params[:id])
        if @appointment.update(appointment_params)
            redirect_to appointments_path
        else
            render:edit
        end
    end

    def destroy
        @appointment=Appointment.find(params[:id])
        @appointment.delete
        redirect_to appointments_path
    end

    def preview
        
    end


    private
    def appointment_params
        params.require(:appointment).permit(:date, :patient, :doctor_id, patient_attributes: [:id, :_destroy, :patientname])
    end
    
end
