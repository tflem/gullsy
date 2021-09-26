require "test_helper"

class AppStructureTest < ActionDispatch::IntegrationTest
  test "app links" do
    get root_path
    assert_template "welcome/index"
    assert_select "a[href=?]", root_path
    get signup_path    
    assert_select "title", full_title("Sign Up")
  end
end
