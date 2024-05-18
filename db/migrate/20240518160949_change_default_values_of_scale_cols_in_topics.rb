class ChangeDefaultValuesOfScaleColsInTopics < ActiveRecord::Migration[7.0]
  def change
    change_column :topics, :min_scale, :integer, default: 0
    change_column :topics, :max_scale, :integer, default: 10
  end
end
