class CreateClientTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :client_titles do |t|
      t.string :client_first_name
      t.string :client_last_name
      t.string :client_date_of_birth
      t.string :client_nationality
      t.string :client_language_spoken
      t.string :client_address1
      t.string :client_address2
      t.string :client_city
      t.string :client_state
      t.string :client_postcode
      t.string :client_primary_phone
      t.string :client_secondary_phone
      t.string :client_email
      t.string :client_reason_for_referral
      t.string :client_date_of_surgery
      t.string :hospital_of_surgery
      t.string :hospital_discharge_date
      t.string :hospital_surgeon
      t.string :hospital_surgeon_phone
      t.string :health_insurance_name
      t.string :health_insurance_number
      t.string :health_insurance_client_manager_name
      t.string :health_insurance_client_manager_contact_number
      t.string :health_insurance_client_manager_email

      t.timestamps
    end
  end
end
