class DailyLog < ApplicationRecord
  belongs_to :user
  belongs_to :mood_log
end
