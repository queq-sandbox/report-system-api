class Users::DailyReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @daily_reports = DailyReport.where(user_id: params[:user_id])
    render json: @daily_reports
  end
end
