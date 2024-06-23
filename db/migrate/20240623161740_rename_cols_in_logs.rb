class RenameColsInLogs < ActiveRecord::Migration[7.0]
  def change
    rename_column :logs, :is_string, :as_string
    rename_column :logs, :is_text, :as_text
    rename_column :logs, :is_float, :as_float
    rename_column :logs, :is_duration, :as_duration
    rename_column :logs, :is_boolean, :as_boolean
    rename_column :logs, :is_list, :as_list
  end
end
