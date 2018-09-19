class Issue < ApplicationRecord
  has_many :daily_reports, through: :issues_daily_reports
  has_many :issues_daily_reports
end
