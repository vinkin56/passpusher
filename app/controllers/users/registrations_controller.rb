# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'application', only: %i[edit update token]
  layout 'login', except: %i[edit update token]

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # GET /resource/token
  def token
    redirect_to user_session_path if current_user.nil?

    # Pre-existing accounts don't have a token yet.
    # Save the user record to have one automatically generated.
    if current_user && current_user.authentication_token.blank?
      current_user.save
    end

    respond_to do |format|
      format.html {}
    end
  end

  # PUT /resource/token
  def regen_token
    redirect_to user_session_path unless user_signed_in?
    current_user.authentication_token = nil
    current_user.save

    redirect_to token_user_registration_path
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
