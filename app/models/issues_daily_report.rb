class IssuesDailyReport < ApplicationRecord
  belongs_to :issue
  belongs_to :daily_report
end
