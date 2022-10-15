class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :author, null: false
      t.string :title,  null: false
      t.text :content

      t.timestamps
    end
  end
end
