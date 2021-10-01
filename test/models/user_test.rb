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

  test "email validations should except valid email addresses" do
    valid_addresses = %w[user@bb.com USER@bookie.COM A_US-ER@boo.bar.org
                         first.last@boo.jp alice+bob@koobaz.cn]
    valid_addresses.each do | valid_email |
      @user.email = valid_email
      assert @user.valid?, "#{valid_email.inspect} should be valid."
    end
  end

  test "email validations should reject valid email addresses" do
    invalid_addresses = %w[user@bb,com user_at_books.org user.name@bb.
                           booki@boo_bazzle.com buki@far+faz.com bahh@bazzle..org]
    invalid_addresses.each do |invalid_email|
      @user.email = invalid_email
      assert_not @user.valid?, "#{invalid_email.inspect} should be invalid."
    end
  end
end