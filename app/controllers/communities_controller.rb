class CommunitiesController < ApplicationController
  before_action :set_without_nav
  def index
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      redirect_to success_communities_path
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

    def community_params
      params.require(:community).permit(:client_title, :client_first_name, :client_last_name, :client_date_of_birth, :client_address_1, :client_address_2, :client_city, :client_postcode, :client_state, :contact_first_name, :contact_last_name, :contact_phone, :service_provider, :contact_relationship, :client_dva, :client_dva_number, :next_of_kin, :next_of_kin_relationship, :next_of_kin_name, :next_of_kin_phone, :client_aboriginal, :client_ndis, :client_ndis_number, :client_ndis_plan_start, :client_ndis_end_date, :client_advanced_care_directive, :client_advanced_care_directive_notes, :client_medical_social_history, :client_invoice, :client_invoice_name, :client_invoice_address1, :client_invoice_address2, :client_invoice_city, :client_invoice_state, :client_invoice_postcode, :referrer_name, :referrer_date, :referrer_email, :referrer_phone, :referrer_urgent)
    end
end