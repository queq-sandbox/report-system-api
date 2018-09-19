class DailyReport < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :issues, through: :issues_daily_reports
  has_many :issues_daily_reports
end
