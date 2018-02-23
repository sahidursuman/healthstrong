class CommunitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  # GET /communities
  # GET /communities.json
  def index
    @communities = Community.all
  end

  # GET /communities/1
  # GET /communities/1.json
  def show
  end

  # GET /communities/new
  def new
    @community = Community.new
  end

  # GET /communities/1/edit
  def edit
  end

  # POST /communities
  # POST /communities.json
  def create
    @community = Community.new(community_params)

    respond_to do |format|
      if @community.save
        format.html { redirect_to @community, notice: 'Community was successfully created.' }
        format.json { render :show, status: :created, location: @community }
      else
        format.html { render :new }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communities/1
  # PATCH/PUT /communities/1.json
  def update
    respond_to do |format|
      if @community.update(community_params)
        format.html { redirect_to @community, notice: 'Community was successfully updated.' }
        format.json { render :show, status: :ok, location: @community }
      else
        format.html { render :edit }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communities/1
  # DELETE /communities/1.json
  def destroy
    @community.destroy
    respond_to do |format|
      format.html { redirect_to communities_url, notice: 'Community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @community = Community.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_params
      params.require(:community).permit(:client_title, :client_first_name, :client_last_name, :client_date_of_birth, :client_address_1, :client_address_2, :client_city, :client_postcode, :client_state, :contact_first_name, :contact_last_name, :contact_phone, :service_provider, :contact_relationship, :client_dva, :client_dva_number, :next_of_kin, :next_of_kin_relationship, :next_of_kin_name, :next_of_kin_phone, :client_aboriginal, :client_ndis, :client_ndis_number, :client_ndis_plan_start, :client_ndis_end_date, :client_advanced_care_directive, :client_advanced_care_directive_notes, :client_medical_social_history, :client_invoice, :client_invoice_name, :client_invoice_address1, :client_invoice_address2, :client_invoice_city, :client_invoice_state, :client_invoice_postcode, :referrer_name, :referrer_date, :referrer_email, :referrer_phone, :referrer_urgent)
    end
end
