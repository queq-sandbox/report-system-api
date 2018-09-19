class CreateIssuesDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :issues_daily_reports do |t|
      t.references :issue, index: true
      t.references :daily_report, index: true
      t.timestamps
    end
  end
end
