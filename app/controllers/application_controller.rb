class ApplicationController < ActionController::API
  before_action :authenticate

  def auth_header
    request.headers['Authorization']
  end

  def authenticate
    return if current_user

    render_forbidden_error 'Invalid login attempt.'
  end

  def current_user
    if !auth_header
      render_forbidden_error 'Must be logged in. Send Bearer token.'
    else
      attempt_decode_token
    end
  end

  def attempt_decode_token
    token = auth_header.split(' ')[1]
    begin
      decoded_token = JWT.decode token, secret_key
      parse_token decoded_token
    rescue
      render_forbidden_error 'Invalid token.'
    end
  end

  def parse_token(decoded_token)
    payload = decoded_token.first
    user_id = payload['user_id']

    @user = User.find user_id
  end

  def secret_key
    ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base[0]
  end

  private

  def render_forbidden_error(message)
    render json: { error: message }, status: :forbidden
  end

end
