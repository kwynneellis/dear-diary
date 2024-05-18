class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.boolean :is_active
      t.boolean :is_default
      t.boolean :is_int
      t.boolean :is_string
      t.boolean :is_text
      t.boolean :is_float
      t.boolean :is_duration
      t.boolean :is_boolean
      t.integer :min_scale
      t.integer :max_scale
      t.string :is_list

      t.timestamps
    end
  end
end
