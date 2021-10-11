require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Patrick Star", email: "pstar@bb.com", 
                     password: "hamburger", password_confirmation: "hamburger")
  end  

  test "name should be present" do
    @user.name = " "
    @user.valid?
    assert_includes @user.errors.messages[:name], "can't be blank"
  end

  test "email should be present" do
    @user.email = " "
    @user.valid?
    assert_includes @user.errors.messages[:email], "can't be blank"
  end

  test "name should not exceed 50 characters" do
    @user.name = "p" * 51
    @user.valid?
    assert_includes @user.errors.messages[:name], "is too long (maximum is 50 characters)"
  end

  test "email should not exceed 255 characters" do
    @user.email = "p" * 249 + "@bb.com"
    @user.valid?
    assert_includes @user.errors.messages[:email], "is too long (maximum is 255 characters)"
  end

  test "email validations should except valid email addresses" do
    valid_addresses = %w[user@bb.com USER@bookie.COM A_US-ER@boo.bar.org
                         first.last@boo.jp alice+bob@koobaz.cn]
    valid_addresses.each do |valid_email|
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

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be lowercase" do
    @user.email = "PaTRickStaR@Bb.Com"
    @user.save
    assert_equal @user.email.downcase, @user.reload.email
  end

  test "password should be present" do
    @user.password = @user.password_confirmation = " " * 8
    @user.valid?
    assert_includes @user.errors.messages[:password], "can't be blank"
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "p" * 7
    @user.valid?
    assert_includes @user.errors.messages[:password], "is too short (minimum is 8 characters)"
  end
end