class Team < ApplicationRecord
  has_many :users
  has_many :reports
  belongs_to :group

  validates :name,
            presence: true
end
