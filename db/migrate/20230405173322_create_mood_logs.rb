class CreateMoodLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :mood_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
