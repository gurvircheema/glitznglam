class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.references :category, foreign_key: true
      t.text :description
      t.string :size
      t.integer :price_in_cents, null: false
      t.boolean :on_sale, null: false, default: false
      t.integer :sale_percenteage, default: 0
      t.string :fabric
      t.boolean :featured, null: false, default: false
      t.string :gender
      t.string :color

      t.timestamps
    end
  end
end
