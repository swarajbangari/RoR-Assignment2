require 'test_helper'

class TeamLeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_lead = team_leads(:one)
  end

  test "should get index" do
    get team_leads_url
    assert_response :success
  end

  test "should get new" do
    get new_team_lead_url
    assert_response :success
  end

  test "should create team_lead" do
    assert_difference('TeamLead.count') do
      post team_leads_url, params: { team_lead: { employee_id: @team_lead.employee_id, team_lead_id: @team_lead.team_lead_id } }
    end

    assert_redirected_to team_lead_url(TeamLead.last)
  end

  test "should show team_lead" do
    get team_lead_url(@team_lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_lead_url(@team_lead)
    assert_response :success
  end

  test "should update team_lead" do
    patch team_lead_url(@team_lead), params: { team_lead: { employee_id: @team_lead.employee_id, team_lead_id: @team_lead.team_lead_id } }
    assert_redirected_to team_lead_url(@team_lead)
  end

  test "should destroy team_lead" do
    assert_difference('TeamLead.count', -1) do
      delete team_lead_url(@team_lead)
    end

    assert_redirected_to team_leads_url
  end
end
