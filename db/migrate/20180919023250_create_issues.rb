class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :issues, :name, unique: true
  end
end
