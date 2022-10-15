class CreateNewsbites < ActiveRecord::Migration[7.0]
  def change
    create_table :newsbites do |t|
      t.string   :title,   null: false, index: { unique: true }
      t.text     :content, null: false
      t.datetime :published_at

      t.timestamps
    end
  end
end
