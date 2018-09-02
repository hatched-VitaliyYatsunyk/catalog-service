class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.string :vendor
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
