require 'test_helper'

class MicroIncidentsControllerTest < ActionController::TestCase
  setup do
    @micro_incident = micro_incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micro_incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micro_incident" do
    assert_difference('MicroIncident.count') do
      post :create, micro_incident: { incident_id: @micro_incident.incident_id, internal_exploit_kit: @micro_incident.internal_exploit_kit, internal_geographic_location: @micro_incident.internal_geographic_location, internal_mal_doc: @micro_incident.internal_mal_doc, internal_mal_eml: @micro_incident.internal_mal_eml, internal_mal_exe: @micro_incident.internal_mal_exe, internal_mal_jar: @micro_incident.internal_mal_jar, internal_mal_pdf: @micro_incident.internal_mal_pdf, internal_mal_xls: @micro_incident.internal_mal_xls, internal_malicious_ip: @micro_incident.internal_malicious_ip, internal_malicious_resource: @micro_incident.internal_malicious_resource, internal_malicious_url: @micro_incident.internal_malicious_url, internal_referrer_chian: @micro_incident.internal_referrer_chian }
    end

    assert_redirected_to micro_incident_path(assigns(:micro_incident))
  end

  test "should show micro_incident" do
    get :show, id: @micro_incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micro_incident
    assert_response :success
  end

  test "should update micro_incident" do
    patch :update, id: @micro_incident, micro_incident: { incident_id: @micro_incident.incident_id, internal_exploit_kit: @micro_incident.internal_exploit_kit, internal_geographic_location: @micro_incident.internal_geographic_location, internal_mal_doc: @micro_incident.internal_mal_doc, internal_mal_eml: @micro_incident.internal_mal_eml, internal_mal_exe: @micro_incident.internal_mal_exe, internal_mal_jar: @micro_incident.internal_mal_jar, internal_mal_pdf: @micro_incident.internal_mal_pdf, internal_mal_xls: @micro_incident.internal_mal_xls, internal_malicious_ip: @micro_incident.internal_malicious_ip, internal_malicious_resource: @micro_incident.internal_malicious_resource, internal_malicious_url: @micro_incident.internal_malicious_url, internal_referrer_chian: @micro_incident.internal_referrer_chian }
    assert_redirected_to micro_incident_path(assigns(:micro_incident))
  end

  test "should destroy micro_incident" do
    assert_difference('MicroIncident.count', -1) do
      delete :destroy, id: @micro_incident
    end

    assert_redirected_to micro_incidents_path
  end
end
