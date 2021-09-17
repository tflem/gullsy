require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get the welcome page" do
  	get "/"
  	assert_select "h1", "Welcome to Gullsy! Caw . . . Caw, Caw!"
  	assert_response :success
  end
end
