require 'test_helper'

class ClientTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_title = client_titles(:one)
  end

  test "should get index" do
    get client_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_client_title_url
    assert_response :success
  end

  test "should create client_title" do
    assert_difference('ClientTitle.count') do
      post client_titles_url, params: { client_title: { client_address1: @client_title.client_address1, client_address2: @client_title.client_address2, client_city: @client_title.client_city, client_date_of_birth: @client_title.client_date_of_birth, client_date_of_surgery: @client_title.client_date_of_surgery, client_email: @client_title.client_email, client_first_name: @client_title.client_first_name, client_language_spoken: @client_title.client_language_spoken, client_last_name: @client_title.client_last_name, client_nationality: @client_title.client_nationality, client_postcode: @client_title.client_postcode, client_primary_phone: @client_title.client_primary_phone, client_reason_for_referral: @client_title.client_reason_for_referral, client_secondary_phone: @client_title.client_secondary_phone, client_state: @client_title.client_state, health_insurance_client_manager_contact_number: @client_title.health_insurance_client_manager_contact_number, health_insurance_client_manager_email: @client_title.health_insurance_client_manager_email, health_insurance_client_manager_name: @client_title.health_insurance_client_manager_name, health_insurance_name: @client_title.health_insurance_name, health_insurance_number: @client_title.health_insurance_number, hospital_discharge_date: @client_title.hospital_discharge_date, hospital_of_surgery: @client_title.hospital_of_surgery, hospital_surgeon: @client_title.hospital_surgeon, hospital_surgeon_phone: @client_title.hospital_surgeon_phone } }
    end

    assert_redirected_to client_title_url(ClientTitle.last)
  end

  test "should show client_title" do
    get client_title_url(@client_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_title_url(@client_title)
    assert_response :success
  end

  test "should update client_title" do
    patch client_title_url(@client_title), params: { client_title: { client_address1: @client_title.client_address1, client_address2: @client_title.client_address2, client_city: @client_title.client_city, client_date_of_birth: @client_title.client_date_of_birth, client_date_of_surgery: @client_title.client_date_of_surgery, client_email: @client_title.client_email, client_first_name: @client_title.client_first_name, client_language_spoken: @client_title.client_language_spoken, client_last_name: @client_title.client_last_name, client_nationality: @client_title.client_nationality, client_postcode: @client_title.client_postcode, client_primary_phone: @client_title.client_primary_phone, client_reason_for_referral: @client_title.client_reason_for_referral, client_secondary_phone: @client_title.client_secondary_phone, client_state: @client_title.client_state, health_insurance_client_manager_contact_number: @client_title.health_insurance_client_manager_contact_number, health_insurance_client_manager_email: @client_title.health_insurance_client_manager_email, health_insurance_client_manager_name: @client_title.health_insurance_client_manager_name, health_insurance_name: @client_title.health_insurance_name, health_insurance_number: @client_title.health_insurance_number, hospital_discharge_date: @client_title.hospital_discharge_date, hospital_of_surgery: @client_title.hospital_of_surgery, hospital_surgeon: @client_title.hospital_surgeon, hospital_surgeon_phone: @client_title.hospital_surgeon_phone } }
    assert_redirected_to client_title_url(@client_title)
  end

  test "should destroy client_title" do
    assert_difference('ClientTitle.count', -1) do
      delete client_title_url(@client_title)
    end

    assert_redirected_to client_titles_url
  end
end
