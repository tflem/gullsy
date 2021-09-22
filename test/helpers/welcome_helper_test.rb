require "test_helper"

class WelcomeHelperTest < ActionView::TestCase
	test "title helper" do
		assert_equal full_title, "Gullsy - An Alternative Bird App"
	end
end