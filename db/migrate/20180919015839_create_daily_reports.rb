class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|
      t.string :emoticon, null: false
      t.text :achivement, null: false
      t.text :plan, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
