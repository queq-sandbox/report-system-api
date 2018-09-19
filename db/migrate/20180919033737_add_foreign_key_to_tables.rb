class AddForeignKeyToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :team, index: true
    add_reference :users, :group, index: true

    add_reference :daily_reports, :user, index: true
    add_reference :daily_reports, :team, index: true

    add_reference :weekly_reports, :user, index: true
    add_reference :weekly_reports, :team, index: true

    add_reference :teams, :group, index: true
  end
end
