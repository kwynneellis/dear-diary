class MoodLog < ApplicationRecord
  belongs_to :user
  # has_many :moods
end
