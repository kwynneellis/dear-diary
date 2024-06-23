class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :topic, null: false, foreign_key: true
      t.integer :as_int
      t.string :is_string
      t.text :is_text
      t.float :is_float
      t.integer :is_duration
      t.boolean :is_boolean
      t.integer :min_scale
      t.integer :max_scale
      t.string :is_list

      t.timestamps
    end
  end
end
