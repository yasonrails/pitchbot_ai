require "test_helper"

class Api::V1::ProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should create proposal" do
    post api_v1_user_proposals_url(@user), params: { title: 'Nouvelle Proposition' }
    assert_response :created
  end



  test "should get index" do
    get api_v1_proposals_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_proposals_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_proposals_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_proposals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_proposals_destroy_url
    assert_response :success
  end
end
