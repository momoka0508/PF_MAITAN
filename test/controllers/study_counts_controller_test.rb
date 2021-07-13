require 'test_helper'

class StudyCountsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get study_counts_create_url
    assert_response :success
  end

end
