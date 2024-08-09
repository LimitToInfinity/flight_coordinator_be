class UsersController < ApplicationController
  skip_before_action :authenticate, only: :create

  def create
    @user = User.create user_params
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit :username, :password
  end
end
