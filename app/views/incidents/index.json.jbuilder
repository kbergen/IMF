json.array!(@incidents) do |incident|
  json.extract! incident, :id, :incident_internal_ip, :incident_translated_ip, :incident_host_name, :incident_incident_time, :incident_detection_time, :incident_remediation_time, :incident_notes, :incident_remediation_actions, :incident_cert_tracking_number, :incident_permission_level, :incident_operating_system, :incident_location, :incident_exploited_application, :incident_cause, :incident_exploit_cve, :incident_incident_category, :incident_incidnet_name, :external_attackers_ip, :external_attackers_country, :external_attack_tool, :external_impact_to_server
  json.url incident_url(incident, format: :json)
end
