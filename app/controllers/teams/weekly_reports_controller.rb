class Teams::WeeklyReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: @weekly_reports = WeeklyReport.where(team_id: params[:team_id])
  end
end
