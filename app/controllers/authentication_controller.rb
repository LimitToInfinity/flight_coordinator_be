class AuthenticationController < ApplicationController
  skip_before_action :authenticate, only: :login

  def login
    @user = User.find_by username: params[:username]

    if !@user
      render status: :unauthorized
    else
      if @user.authenticate params[:password]
        secret_key =
          ENV['SECRET_KEY_BASE'] ||
          Rails.application.secrets.secret_key_base[0]
        payload = {
          user_id: @user.id,
          username: @user.username,
          exp: Time.now.to_i + 3600
        }
        token = JWT.encode payload, secret_key

        render json: { token: token }
      else
        render status: :unauthorized
      end
    end
  end
end
