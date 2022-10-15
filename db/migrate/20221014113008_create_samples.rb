class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.string  :name,     null: false, index: {unique: true}
      t.string  :title,    null: false
      t.decimal :price,    null: false, default: 0
      t.integer :quantity, null: false, default: 0

      t.timestamps
    end
  end
end
