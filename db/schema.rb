# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180222033031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_titles", force: :cascade do |t|
    t.string "client_first_name"
    t.string "client_last_name"
    t.string "client_date_of_birth"
    t.string "client_nationality"
    t.string "client_language_spoken"
    t.string "client_address1"
    t.string "client_address2"
    t.string "client_city"
    t.string "client_state"
    t.string "client_postcode"
    t.string "client_primary_phone"
    t.string "client_secondary_phone"
    t.string "client_email"
    t.string "client_reason_for_referral"
    t.string "client_date_of_surgery"
    t.string "hospital_of_surgery"
    t.string "hospital_discharge_date"
    t.string "hospital_surgeon"
    t.string "hospital_surgeon_phone"
    t.string "health_insurance_name"
    t.string "health_insurance_number"
    t.string "health_insurance_client_manager_name"
    t.string "health_insurance_client_manager_contact_number"
    t.string "health_insurance_client_manager_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communities", force: :cascade do |t|
    t.string "client_title"
    t.string "client_first_name"
    t.string "client_last_name"
    t.string "client_date_of_birth"
    t.string "client_address_1"
    t.string "client_address_2"
    t.string "client_city"
    t.string "client_postcode"
    t.string "client_state"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.string "contact_phone"
    t.string "service_provider"
    t.string "contact_relationship"
    t.boolean "client_dva"
    t.string "client_dva_number"
    t.boolean "next_of_kin"
    t.string "next_of_kin_relationship"
    t.string "next_of_kin_name"
    t.string "next_of_kin_phone"
    t.string "client_aboriginal"
    t.boolean "client_ndis"
    t.string "client_ndis_number"
    t.string "client_ndis_plan_start"
    t.string "client_ndis_end_date"
    t.boolean "client_advanced_care_directive"
    t.string "client_advanced_care_directive_notes"
    t.string "client_medical_social_history"
    t.boolean "client_invoice"
    t.string "client_invoice_name"
    t.string "client_invoice_address1"
    t.string "client_invoice_address2"
    t.string "client_invoice_city"
    t.string "client_invoice_state"
    t.string "client_invoice_postcode"
    t.string "referrer_name"
    t.string "referrer_date"
    t.string "referrer_email"
    t.string "referrer_phone"
    t.boolean "referrer_urgent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "client_title"
    t.string "client_first_name"
    t.string "client_last_name"
    t.string "client_date_of_birth"
    t.string "client_nationality"
    t.string "client_language_spoken"
    t.string "client_address1"
    t.string "client_address2"
    t.string "client_city"
    t.string "client_state"
    t.string "client_postcode"
    t.string "client_primary_phone"
    t.string "client_secondary_phone"
    t.string "client_email"
    t.string "client_reason_for_referral"
    t.string "client_date_of_surgery"
    t.string "hospital_of_surgery"
    t.string "hospital_discharge_date"
    t.string "hospital_surgeon"
    t.string "hospital_surgeon_phone"
    t.string "health_insurance_name"
    t.string "health_insurance_number"
    t.string "health_insurance_client_manager_name"
    t.string "health_insurance_client_manager_contact_number"
    t.string "health_insurance_client_manager_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
