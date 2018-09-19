class WeeklyReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :did_current_user_create?, only: [:update, :destroy]

  def create
    @weekly_report = WeeklyReport.new(weekly_report_params)
    if @weekly_report.save
      render json: @weekly_report, status: :created, location: @user
    else
      render json: @weekly_report.errors, status: :unprocessable_entity
    end
  end

  def update
    @weekly_report = WeeklyReport.find(params[:id])
    if @weekly_report.update(weekly_report_params)
      render json: @weekly_report, status: :created, location: @user
    else
      render json: @weekly_report.errors
    end
  end

  def destroy
    @weekly_report = WeeklyReport.find(params[:id])
    if @weekly_report.destroy
      render json: @weekly_report, status: :created, location: @user
    else
      render json: @weekly_report.errors
    end
  end

  private

    def weekly_report_params
      params.require(:weekly_report).permit(:issue, :solution, :summary, :user_id, :team_id)
    end

    def did_current_user_create?
      @weekly_report = WeeklyReport.find(params[:id])
      @weekly_report.user_id == current_user.id
    end
end
