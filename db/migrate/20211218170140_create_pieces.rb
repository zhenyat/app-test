class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string   :title, null: false, index: true
      t.string   :slug,  null: false, index: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
