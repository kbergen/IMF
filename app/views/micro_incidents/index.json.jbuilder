json.array!(@micro_incidents) do |micro_incident|
  json.extract! micro_incident, :id, :internal_malicious_ip, :internal_exploit_kit, :internal_malicious_url, :internal_malicious_resource, :internal_geographic_location, :internal_referrer_chian, :internal_mal_exe, :internal_mal_jar, :internal_mal_pdf, :internal_mal_xls, :internal_mal_doc, :internal_mal_eml, :incident_id
  json.url micro_incident_url(micro_incident, format: :json)
end
