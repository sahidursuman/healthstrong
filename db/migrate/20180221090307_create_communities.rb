class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :client_title
      t.string :client_first_name
      t.string :client_last_name
      t.string :client_date_of_birth
      t.string :client_address_1
      t.string :client_address_2
      t.string :client_city
      t.string :client_postcode
      t.string :client_state
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_phone
      t.string :service_provider
      t.string :contact_relationship
      t.boolean :client_dva
      t.string :client_dva_number
      t.boolean :next_of_kin
      t.string :next_of_kin_relationship
      t.string :next_of_kin_name
      t.string :next_of_kin_phone
      t.string :client_aboriginal
      t.boolean :client_ndis
      t.string :client_ndis_number
      t.string :client_ndis_plan_start
      t.string :client_ndis_end_date
      t.boolean :client_advanced_care_directive
      t.string :client_advanced_care_directive_notes
      t.string :client_medical_social_history
      t.boolean :client_invoice
      t.string :client_invoice_name
      t.string :client_invoice_address1
      t.string :client_invoice_address2
      t.string :client_invoice_city
      t.string :client_invoice_state
      t.string :client_invoice_postcode
      t.string :referrer_name
      t.string :referrer_date
      t.string :referrer_email
      t.string :referrer_phone
      t.boolean :referrer_urgent

      t.timestamps
    end
  end
end
