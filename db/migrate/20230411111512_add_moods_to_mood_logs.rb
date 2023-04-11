class AddMoodsToMoodLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :mood_logs, :moods, :string
  end
end
