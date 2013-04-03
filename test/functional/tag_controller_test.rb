require 'test_helper'

class TagControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get post:references" do
    get :post:references
    assert_response :success
  end

end
