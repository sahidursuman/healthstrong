class HospitalsController < ApplicationController
  before_action :set_without_nav
  def index
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)

    if @hospital.save
      redirect_to success_hospitals_path
    else
      render :index
    end
  end

  def success
  end

  private
    def set_without_nav
      @without_nav = true
    end

    def hospital_params
      params.require(:hospital).permit(:client_title, :client_first_name, :client_last_name, :client_date_of_birth, :client_nationality, :client_language_spoken, :client_address1, :client_address2, :client_city, :client_state, :client_postcode, :client_primary_phone, :client_secondary_phone, :client_email, :client_reason_for_referral, :client_date_of_surgery, :hospital_of_surgery, :hospital_discharge_date, :hospital_surgeon, :hospital_surgeon_phone, :health_insurance_name, :health_insurance_number, :health_insurance_client_manager_name, :health_insurance_client_manager_contact_number, :health_insurance_client_manager_email)
    end
end