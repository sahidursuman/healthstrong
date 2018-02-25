# == Schema Information
#
# Table name: hospitals
#
#  id                                             :integer          not null, primary key
#  client_title                                   :string
#  client_first_name                              :string
#  client_last_name                               :string
#  client_date_of_birth                           :string
#  client_nationality                             :string
#  client_language_spoken                         :string
#  client_address1                                :string
#  client_address2                                :string
#  client_city                                    :string
#  client_state                                   :string
#  client_postcode                                :string
#  client_primary_phone                           :string
#  client_secondary_phone                         :string
#  client_email                                   :string
#  client_reason_for_referral                     :string
#  client_date_of_surgery                         :string
#  hospital_of_surgery                            :string
#  hospital_discharge_date                        :string
#  hospital_surgeon                               :string
#  hospital_surgeon_phone                         :string
#  health_insurance_name                          :string
#  health_insurance_number                        :string
#  health_insurance_client_manager_name           :string
#  health_insurance_client_manager_contact_number :string
#  health_insurance_client_manager_email          :string
#  created_at                                     :datetime         not null
#  updated_at                                     :datetime         not null
#

require 'test_helper'

class HospitalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
