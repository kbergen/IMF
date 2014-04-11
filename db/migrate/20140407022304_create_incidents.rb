class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :incident_internal_ip
      t.string :incident_translated_ip
      t.string :incident_host_name
      t.datetime :incident_incident_time
      t.datetime :incident_detection_time
      t.datetime :incident_remediation_time
      t.text :incident_notes
      t.text :incident_remediation_actions
      t.string :incident_cert_tracking_number
      t.string :incident_permission_level
      t.string :incident_operating_system
      t.string :incident_location
      t.string :incident_exploited_application
      t.string :incident_cause
      t.string :incident_exploit_cve
      t.string :incident_incident_category
      t.string :incident_incidnet_name
      t.string :external_attackers_ip
      t.string :external_attackers_country
      t.string :external_attack_tool
      t.string :external_impact_to_server

      t.timestamps
    end
  end
end
