class PatientsController < ApplicationController
 def index
    @patients = Patient.all
 end
  
def show
    @patient = Patient.find(params[:id])
  end
 
 def new
 @patient = Patient.new

    end
	
 def create
  @patient = Patient.new(patient_params)
 
   if @patient.save
     redirect_to action: "index"
    else
	   render action: "new" 
	 end
  end
 
 private
  def patient_params
    params.require(:patient).permit(:Patient_name, :DOB, :Identity_card_type, :Identity_card_number, :Staff_identity, :Staff_sys_ip_location)
	
  end

end