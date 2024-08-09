class AuthenticationController < ApplicationController
  skip_before_action :authenticate, only: :login

  def logged_in?
    token = encode_token
    render_token_success token
  end

  def login
    @user = User.find_by username: params[:username]

    if !@user
      render status: :unauthorized
    else
      if @user.authenticate params[:password]
        token = encode_token
        render_token_success token
      else
        render status: :unauthorized
      end
    end
  end

  private

  def encode_token
    payload = {
      user_id: @user.id,
      username: @user.username,
      exp: Time.now.to_i + 3600
    }
    JWT.encode payload, secret_key
  end

  def render_token_success(token)
    render json: { token: token }, status: :ok
  end

end
