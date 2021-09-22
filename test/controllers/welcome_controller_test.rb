require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get the welcome page" do
  	get root_path
    assert_response :success
    assert_select "title", "Gullsy - An Alternative Bird App"
  	assert_select "h1", "Welcome to Gullsy. Caw Caw!"  	
  end
end
