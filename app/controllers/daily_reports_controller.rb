class DailyReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :did_current_user_create?, only: [:update, :destroy]

  def create
    @daily_report = DailyReport.new(daily_report_params)
    if @daily_report.save
      render json: @daily_report, status: :created, location: @user
    else
      render json: @daily_report.errors, status: :unprocessable_entity
    end
  end

  def update
    @daily_report = DailyReport.find(params[:id])
    if @daily_report.update(daily_report_params)
      render json: @daily_report, status: :created, location: @user
    else
      render json: @daily_report.errors
    end
  end

  def destroy
    @daily_report = DailyReport.find(params[:id])
    if @daily_report.destroy
      render json: @daily_report, status: :created, location: @user
    else
      render json: @daily_report.errors
    end
  end

  private

    def daily_report_params
      params.require(:daily_report).permit(:emoticon, :achivement, :plan, :description, :user_id, :team_id)
    end

    def did_current_user_create?
      @daily_report = DailyReport.find(params[:id])
      @daily_report.user_id == current_user.id
    end
end
