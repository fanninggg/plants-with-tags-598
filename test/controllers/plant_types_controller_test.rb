require 'test_helper'

class PlantTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get plant_types_new_url
    assert_response :success
  end

  test "should get create" do
    get plant_types_create_url
    assert_response :success
  end

end
