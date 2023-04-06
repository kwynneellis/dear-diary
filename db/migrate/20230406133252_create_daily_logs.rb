class CreateDailyLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.references :mood_log, null: false, foreign_key: true

      t.timestamps
    end
  end
end
