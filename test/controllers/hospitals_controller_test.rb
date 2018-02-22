require 'test_helper'

class HospitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hospital = hospitals(:one)
  end

  test "should get index" do
    get hospitals_url
    assert_response :success
  end

  test "should get new" do
    get new_hospital_url
    assert_response :success
  end

  test "should create hospital" do
    assert_difference('Hospital.count') do
      post hospitals_url, params: { hospital: { client_address1: @hospital.client_address1, client_address2: @hospital.client_address2, client_city: @hospital.client_city, client_date_of_birth: @hospital.client_date_of_birth, client_date_of_surgery: @hospital.client_date_of_surgery, client_email: @hospital.client_email, client_first_name: @hospital.client_first_name, client_language_spoken: @hospital.client_language_spoken, client_last_name: @hospital.client_last_name, client_nationality: @hospital.client_nationality, client_postcode: @hospital.client_postcode, client_primary_phone: @hospital.client_primary_phone, client_reason_for_referral: @hospital.client_reason_for_referral, client_secondary_phone: @hospital.client_secondary_phone, client_state: @hospital.client_state, client_title: @hospital.client_title, health_insurance_client_manager_contact_number: @hospital.health_insurance_client_manager_contact_number, health_insurance_client_manager_email: @hospital.health_insurance_client_manager_email, health_insurance_client_manager_name: @hospital.health_insurance_client_manager_name, health_insurance_name: @hospital.health_insurance_name, health_insurance_number: @hospital.health_insurance_number, hospital_discharge_date: @hospital.hospital_discharge_date, hospital_of_surgery: @hospital.hospital_of_surgery, hospital_surgeon: @hospital.hospital_surgeon, hospital_surgeon_phone: @hospital.hospital_surgeon_phone } }
    end

    assert_redirected_to hospital_url(Hospital.last)
  end

  test "should show hospital" do
    get hospital_url(@hospital)
    assert_response :success
  end

  test "should get edit" do
    get edit_hospital_url(@hospital)
    assert_response :success
  end

  test "should update hospital" do
    patch hospital_url(@hospital), params: { hospital: { client_address1: @hospital.client_address1, client_address2: @hospital.client_address2, client_city: @hospital.client_city, client_date_of_birth: @hospital.client_date_of_birth, client_date_of_surgery: @hospital.client_date_of_surgery, client_email: @hospital.client_email, client_first_name: @hospital.client_first_name, client_language_spoken: @hospital.client_language_spoken, client_last_name: @hospital.client_last_name, client_nationality: @hospital.client_nationality, client_postcode: @hospital.client_postcode, client_primary_phone: @hospital.client_primary_phone, client_reason_for_referral: @hospital.client_reason_for_referral, client_secondary_phone: @hospital.client_secondary_phone, client_state: @hospital.client_state, client_title: @hospital.client_title, health_insurance_client_manager_contact_number: @hospital.health_insurance_client_manager_contact_number, health_insurance_client_manager_email: @hospital.health_insurance_client_manager_email, health_insurance_client_manager_name: @hospital.health_insurance_client_manager_name, health_insurance_name: @hospital.health_insurance_name, health_insurance_number: @hospital.health_insurance_number, hospital_discharge_date: @hospital.hospital_discharge_date, hospital_of_surgery: @hospital.hospital_of_surgery, hospital_surgeon: @hospital.hospital_surgeon, hospital_surgeon_phone: @hospital.hospital_surgeon_phone } }
    assert_redirected_to hospital_url(@hospital)
  end

  test "should destroy hospital" do
    assert_difference('Hospital.count', -1) do
      delete hospital_url(@hospital)
    end

    assert_redirected_to hospitals_url
  end
end
