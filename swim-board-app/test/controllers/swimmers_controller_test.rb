require 'test_helper'

class SwimmersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swimmer = swimmers(:one)
  end

  test "should get index" do
    get swimmers_url
    assert_response :success
  end

  test "should get new" do
    get new_swimmer_url
    assert_response :success
  end

  test "should create swimmer" do
    assert_difference('Swimmer.count') do
      post swimmers_url, params: { swimmer: { member_number: @swimmer.member_number, name: @swimmer.name, password_digest: @swimmer.password_digest } }
    end

    assert_redirected_to swimmer_url(Swimmer.last)
  end

  test "should show swimmer" do
    get swimmer_url(@swimmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_swimmer_url(@swimmer)
    assert_response :success
  end

  test "should update swimmer" do
    patch swimmer_url(@swimmer), params: { swimmer: { member_number: @swimmer.member_number, name: @swimmer.name, password_digest: @swimmer.password_digest } }
    assert_redirected_to swimmer_url(@swimmer)
  end

  test "should destroy swimmer" do
    assert_difference('Swimmer.count', -1) do
      delete swimmer_url(@swimmer)
    end

    assert_redirected_to swimmers_url
  end
end
