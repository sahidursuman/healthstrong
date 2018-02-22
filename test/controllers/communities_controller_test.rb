require 'test_helper'

class CommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community = communities(:one)
  end

  test "should get index" do
    get communities_url
    assert_response :success
  end

  test "should get new" do
    get new_community_url
    assert_response :success
  end

  test "should create community" do
    assert_difference('Community.count') do
      post communities_url, params: { community: { client_aboriginal: @community.client_aboriginal, client_address_1: @community.client_address_1, client_address_2: @community.client_address_2, client_advanced_care_directive: @community.client_advanced_care_directive, client_advanced_care_directive_notes: @community.client_advanced_care_directive_notes, client_city: @community.client_city, client_date_of_birth: @community.client_date_of_birth, client_dva: @community.client_dva, client_dva_number: @community.client_dva_number, client_first_name: @community.client_first_name, client_invoice: @community.client_invoice, client_invoice_address1: @community.client_invoice_address1, client_invoice_address2: @community.client_invoice_address2, client_invoice_city: @community.client_invoice_city, client_invoice_name: @community.client_invoice_name, client_invoice_postcode: @community.client_invoice_postcode, client_invoice_state: @community.client_invoice_state, client_last_name: @community.client_last_name, client_medical_social_history: @community.client_medical_social_history, client_ndis: @community.client_ndis, client_ndis_end_date: @community.client_ndis_end_date, client_ndis_number: @community.client_ndis_number, client_ndis_plan_start: @community.client_ndis_plan_start, client_postcode: @community.client_postcode, client_state: @community.client_state, client_title: @community.client_title, contact_first_name: @community.contact_first_name, contact_last_name: @community.contact_last_name, contact_phone: @community.contact_phone, contact_relationship: @community.contact_relationship, next_of_kin: @community.next_of_kin, next_of_kin_name: @community.next_of_kin_name, next_of_kin_phone: @community.next_of_kin_phone, next_of_kin_relationship: @community.next_of_kin_relationship, referrer_date: @community.referrer_date, referrer_email: @community.referrer_email, referrer_name: @community.referrer_name, referrer_phone: @community.referrer_phone, referrer_urgent: @community.referrer_urgent, service_provider: @community.service_provider } }
    end

    assert_redirected_to community_url(Community.last)
  end

  test "should show community" do
    get community_url(@community)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_url(@community)
    assert_response :success
  end

  test "should update community" do
    patch community_url(@community), params: { community: { client_aboriginal: @community.client_aboriginal, client_address_1: @community.client_address_1, client_address_2: @community.client_address_2, client_advanced_care_directive: @community.client_advanced_care_directive, client_advanced_care_directive_notes: @community.client_advanced_care_directive_notes, client_city: @community.client_city, client_date_of_birth: @community.client_date_of_birth, client_dva: @community.client_dva, client_dva_number: @community.client_dva_number, client_first_name: @community.client_first_name, client_invoice: @community.client_invoice, client_invoice_address1: @community.client_invoice_address1, client_invoice_address2: @community.client_invoice_address2, client_invoice_city: @community.client_invoice_city, client_invoice_name: @community.client_invoice_name, client_invoice_postcode: @community.client_invoice_postcode, client_invoice_state: @community.client_invoice_state, client_last_name: @community.client_last_name, client_medical_social_history: @community.client_medical_social_history, client_ndis: @community.client_ndis, client_ndis_end_date: @community.client_ndis_end_date, client_ndis_number: @community.client_ndis_number, client_ndis_plan_start: @community.client_ndis_plan_start, client_postcode: @community.client_postcode, client_state: @community.client_state, client_title: @community.client_title, contact_first_name: @community.contact_first_name, contact_last_name: @community.contact_last_name, contact_phone: @community.contact_phone, contact_relationship: @community.contact_relationship, next_of_kin: @community.next_of_kin, next_of_kin_name: @community.next_of_kin_name, next_of_kin_phone: @community.next_of_kin_phone, next_of_kin_relationship: @community.next_of_kin_relationship, referrer_date: @community.referrer_date, referrer_email: @community.referrer_email, referrer_name: @community.referrer_name, referrer_phone: @community.referrer_phone, referrer_urgent: @community.referrer_urgent, service_provider: @community.service_provider } }
    assert_redirected_to community_url(@community)
  end

  test "should destroy community" do
    assert_difference('Community.count', -1) do
      delete community_url(@community)
    end

    assert_redirected_to communities_url
  end
end
