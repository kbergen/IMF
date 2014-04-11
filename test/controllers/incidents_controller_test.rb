require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { external_attack_tool: @incident.external_attack_tool, external_attackers_country: @incident.external_attackers_country, external_attackers_ip: @incident.external_attackers_ip, external_impact_to_server: @incident.external_impact_to_server, incident_cause: @incident.incident_cause, incident_cert_tracking_number: @incident.incident_cert_tracking_number, incident_detection_time: @incident.incident_detection_time, incident_exploit_cve: @incident.incident_exploit_cve, incident_exploited_application: @incident.incident_exploited_application, incident_host_name: @incident.incident_host_name, incident_incident_category: @incident.incident_incident_category, incident_incident_time: @incident.incident_incident_time, incident_incidnet_name: @incident.incident_incidnet_name, incident_internal_ip: @incident.incident_internal_ip, incident_location: @incident.incident_location, incident_notes: @incident.incident_notes, incident_operating_system: @incident.incident_operating_system, incident_permission_level: @incident.incident_permission_level, incident_remediation_actions: @incident.incident_remediation_actions, incident_remediation_time: @incident.incident_remediation_time, incident_translated_ip: @incident.incident_translated_ip }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    patch :update, id: @incident, incident: { external_attack_tool: @incident.external_attack_tool, external_attackers_country: @incident.external_attackers_country, external_attackers_ip: @incident.external_attackers_ip, external_impact_to_server: @incident.external_impact_to_server, incident_cause: @incident.incident_cause, incident_cert_tracking_number: @incident.incident_cert_tracking_number, incident_detection_time: @incident.incident_detection_time, incident_exploit_cve: @incident.incident_exploit_cve, incident_exploited_application: @incident.incident_exploited_application, incident_host_name: @incident.incident_host_name, incident_incident_category: @incident.incident_incident_category, incident_incident_time: @incident.incident_incident_time, incident_incidnet_name: @incident.incident_incidnet_name, incident_internal_ip: @incident.incident_internal_ip, incident_location: @incident.incident_location, incident_notes: @incident.incident_notes, incident_operating_system: @incident.incident_operating_system, incident_permission_level: @incident.incident_permission_level, incident_remediation_actions: @incident.incident_remediation_actions, incident_remediation_time: @incident.incident_remediation_time, incident_translated_ip: @incident.incident_translated_ip }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
