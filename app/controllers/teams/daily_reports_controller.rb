class Teams::DailyReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: @daily_reports = DailyReport.where(team_id: params[:team_id])
  end
end
