class AddDefaultValueToBooleanColsInTopic < ActiveRecord::Migration[7.0]
  def change
    change_column :topics, :is_active, :boolean, default: true
    change_column :topics, :is_default, :boolean, default: false
    change_column :topics, :is_int, :boolean, default: false
    change_column :topics, :is_string, :boolean, default: false
    change_column :topics, :is_text, :boolean, default: false
    change_column :topics, :is_float, :boolean, default: false
    change_column :topics, :is_duration, :boolean, default: false
    change_column :topics, :is_boolean, :boolean, default: false
    change_column :topics, :min_scale, :boolean, default: false
    change_column :topics, :max_scale, :boolean, default: false
    change_column :topics, :is_list, :boolean, default: false
  end
end
