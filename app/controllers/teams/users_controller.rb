class Teams::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where(team_id: params[:team_id])
    render json: @users
  end
end
