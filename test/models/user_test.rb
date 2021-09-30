require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Patrick Star", email: "pstar@bb.com")
  end

  test "should be a valid user" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "name should not exceed 50 characters" do
    @user.name = "p" * 51
    assert_not @user.valid?
  end

  test "email should not exceed 255 characters" do
    @user.email = "p" * 249 + "@bb.com"
    assert_not @user.valid?
  end
end