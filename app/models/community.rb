# == Schema Information
#
# Table name: communities
#
#  id                                   :integer          not null, primary key
#  client_title                         :string
#  client_first_name                    :string
#  client_last_name                     :string
#  client_date_of_birth                 :string
#  client_address_1                     :string
#  client_address_2                     :string
#  client_city                          :string
#  client_postcode                      :string
#  client_state                         :string
#  contact_first_name                   :string
#  contact_last_name                    :string
#  contact_phone                        :string
#  service_provider                     :string
#  contact_relationship                 :string
#  client_dva                           :boolean
#  client_dva_number                    :string
#  next_of_kin                          :boolean
#  next_of_kin_relationship             :string
#  next_of_kin_name                     :string
#  next_of_kin_phone                    :string
#  client_aboriginal                    :string
#  client_ndis                          :boolean
#  client_ndis_number                   :string
#  client_ndis_plan_start               :string
#  client_ndis_end_date                 :string
#  client_advanced_care_directive       :boolean
#  client_advanced_care_directive_notes :string
#  client_medical_social_history        :string
#  client_invoice                       :boolean
#  client_invoice_name                  :string
#  client_invoice_address1              :string
#  client_invoice_address2              :string
#  client_invoice_city                  :string
#  client_invoice_state                 :string
#  client_invoice_postcode              :string
#  referrer_name                        :string
#  referrer_date                        :string
#  referrer_email                       :string
#  referrer_phone                       :string
#  referrer_urgent                      :boolean
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

class Community < ApplicationRecord

  validates_presence_of :client_first_name,
                        :client_last_name,
                        :client_date_of_birth,
                        :client_address1,
                        :client_city,
                        :client_postcode,
                        :client_state,
                        :client_state,
                        :contact_first_name,
                        :contact_last_name,
                        :contact_phone,
                        :service_provider,
                        :contact_relationship


end
