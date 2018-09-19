class CreateWeeklyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_reports do |t|
      t.text :issue, null: false
      t.text :solution, null: false
      t.text :summary, null: false
      t.timestamps
    end
  end
end
