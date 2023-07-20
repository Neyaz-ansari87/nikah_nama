require "test_helper"

class GroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groom = grooms(:one)
  end

  test "should get index" do
    get grooms_url
    assert_response :success
  end

  test "should get new" do
    get new_groom_url
    assert_response :success
  end

  test "should create groom" do
    assert_difference('Groom.count') do
      post grooms_url, params: { groom: { first_name: @groom.first_name, last_name: @groom.last_name, surname: @groom.surname } }
    end

    assert_redirected_to groom_url(Groom.last)
  end

  test "should show groom" do
    get groom_url(@groom)
    assert_response :success
  end

  test "should get edit" do
    get edit_groom_url(@groom)
    assert_response :success
  end

  test "should update groom" do
    patch groom_url(@groom), params: { groom: { first_name: @groom.first_name, last_name: @groom.last_name, surname: @groom.surname } }
    assert_redirected_to groom_url(@groom)
  end

  test "should destroy groom" do
    assert_difference('Groom.count', -1) do
      delete groom_url(@groom)
    end

    assert_redirected_to grooms_url
  end
end
