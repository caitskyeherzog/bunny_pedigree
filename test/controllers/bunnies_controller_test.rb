require 'test_helper'

class BunniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bunny = bunnies(:one)
  end

  test "should get index" do
    get bunnies_url
    assert_response :success
  end

  test "should get new" do
    get new_bunny_url
    assert_response :success
  end

  test "should create bunny" do
    assert_difference('Bunny.count') do
      post bunnies_url, params: { bunny: { color: @bunny.color, dob: @bunny.dob, name: @bunny.name } }
    end

    assert_redirected_to bunny_url(Bunny.last)
  end

  test "should show bunny" do
    get bunny_url(@bunny)
    assert_response :success
  end

  test "should get edit" do
    get edit_bunny_url(@bunny)
    assert_response :success
  end

  test "should update bunny" do
    patch bunny_url(@bunny), params: { bunny: { color: @bunny.color, dob: @bunny.dob, name: @bunny.name } }
    assert_redirected_to bunny_url(@bunny)
  end

  test "should destroy bunny" do
    assert_difference('Bunny.count', -1) do
      delete bunny_url(@bunny)
    end

    assert_redirected_to bunnies_url
  end
end
