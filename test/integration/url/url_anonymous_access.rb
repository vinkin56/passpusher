require 'test_helper'

class PasswordCreationTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    Settings.enable_logins = true
    Settings.enable_urls = true

    Rails.application.reload_routes!
  end

  teardown do
    Settings.disable_signups = false
  end

  def test_anonymous_disabled_signups_no_signup_link
    Settings.disable_signups = true

    get new_url_path
    assert_response :success
    assert response.body.include?('Please login to use this feature.')
  end
  
  def test_anonymous_enabled_signups_with_signup_link
    get new_url_path
    assert_response :success
    assert response.body.include?('Please login or sign up to use this feature.')
  end

  def test_no_access_for_anonymous
    get active_urls_path
    assert_response :redirect

    get expired_urls_path
    assert_response :redirect

    post urls_path, params: { :blah => 'blah' }
    assert_response :redirect

    get new_url_path
    assert_response :success 
  end
end
