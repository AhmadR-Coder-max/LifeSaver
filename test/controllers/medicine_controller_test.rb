require 'test_helper'

class MedicineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicine_index_url
    assert_response :success
  end

end
