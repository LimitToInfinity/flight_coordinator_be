class ApplicationController < ActionController::API
  before_action :authenticate

  def authenticate
    authorization_header = request.headers[:authorization]

    if !authorization_header
      render json: { error: 'Must be logged in. Send bearer token.' }, status: :forbidden
    else
      token = authorization_header.split(' ')[1]
      secret_key =
        ENV['SECRET_KEY_BASE'] ||
        Rails.application.secrets.secret_key_base[0]
      begin
        decoded_token = JWT.decode token, secret_key
        @user = User.find decoded_token[0]['user_id']
      rescue
        render json: { error: 'Invalid token.' }, status: :forbidden
      end

    end
  end
end
