require 'test_helper'

class StudyQuantitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get study_quantities_create_url
    assert_response :success
  end

end
