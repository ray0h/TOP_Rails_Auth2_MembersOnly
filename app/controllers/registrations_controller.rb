class RegistrationsController < Devise::RegistrationsController
  before_action :require_token, only: [:create]

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmable)
  end

  private

  def require_token
    return unless params[:user][:signup_token] == 'secret'

    redirect_to new_user_registration_path
    flash[:error] = 'You must enter the required secret Signup Token.'
  end
end
