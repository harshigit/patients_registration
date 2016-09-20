class PatientsController < ApplicationController


 def index
    @patient = Patient.all
  end
  

 def new
  @patient = Patient.new
 end
 
 def create
  @patient = Patient.new(patient_params)
 
 respond_to do |format|
   if @patient.save
  format.html { redirect_to @article, notice: 'Patient was successfully registered.' }
  else
    format.html { render :new }
  
    end
 end
 
  def show
    @patient = Patient.find(params[:id])
 end
 
 
  private
  def patient_params
    params.require(:patient).permit(:Patient_name, :DOB, :Identity_card_type, :Identity_card_number, :Staff_identity, :Staff_sys_ip_location)
  end

end
end