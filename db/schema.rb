# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140409155515) do

# Could not dump table "executables" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "incidents", force: true do |t|
    t.string   "incident_internal_ip"
    t.string   "incident_translated_ip"
    t.string   "incident_host_name"
    t.datetime "incident_incident_time"
    t.datetime "incident_detection_time"
    t.datetime "incident_remediation_time"
    t.text     "incident_notes"
    t.text     "incident_remediation_actions"
    t.string   "incident_cert_tracking_number"
    t.string   "incident_permission_level"
    t.string   "incident_operating_system"
    t.string   "incident_location"
    t.string   "incident_exploited_application"
    t.string   "incident_cause"
    t.string   "incident_exploit_cve"
    t.string   "incident_incident_category"
    t.string   "incident_incidnet_name"
    t.string   "external_attackers_ip"
    t.string   "external_attackers_country"
    t.string   "external_attack_tool"
    t.string   "external_impact_to_server"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "incident_artifacts",             default: "None"
  end

  create_table "micro_incidents", force: true do |t|
    t.string   "internal_malicious_ip"
    t.string   "internal_exploit_kit"
    t.string   "internal_malicious_url"
    t.string   "internal_malicious_resource"
    t.string   "internal_geographic_location"
    t.string   "internal_referrer_chian"
    t.string   "internal_mal_exe"
    t.string   "internal_mal_jar"
    t.string   "internal_mal_pdf"
    t.string   "internal_mal_xls"
    t.string   "internal_mal_doc"
    t.string   "internal_mal_eml"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "micro_incidents", ["incident_id"], name: "index_micro_incidents_on_incident_id"

  create_table "variables", force: true do |t|
    t.text     "location_options"
    t.text     "exploited_application_options"
    t.text     "social_engineering_options"
    t.text     "user_permissions_options"
    t.text     "operating_system_options"
    t.text     "incident_cause_options"
    t.text     "external_impact"
    t.text     "incident_category_options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
