require 'test_helper'

class Owner::VansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_vans_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_vans_create_url
    assert_response :success
  end

end
