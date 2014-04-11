json.array!(@variables) do |variable|
  json.extract! variable, :id, :location_options, :exploited_application_options, :social_engineering_options, :user_permissions_options, :operating_system_options, :incident_cause_options, :external_impact, :incident_category_options
  json.url variable_url(variable, format: :json)
end
