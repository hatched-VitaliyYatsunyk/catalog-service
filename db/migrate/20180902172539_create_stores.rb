class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address

      t.timestamps
    end

    add_column :categories, :store_id, :bigint, null: false
    add_foreign_key :categories, :stores
  end
end
