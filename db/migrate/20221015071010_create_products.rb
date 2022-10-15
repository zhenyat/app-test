class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string  :name, null: false, index: { unique: true }
      t.string  :sku
      t.decimal :price
      t.string  :uuid, null: false, index: { unique: true }, default: SecureRandom.uuid

      t.timestamps
    end
  end
end
