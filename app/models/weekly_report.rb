class WeeklyReport < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :issue,
            :solution,
            :summary,
            presence: true
end
