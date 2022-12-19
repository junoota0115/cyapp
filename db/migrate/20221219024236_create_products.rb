class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :company_id,     null: false
      t.string :product_name,     null: false
      t.integer :price,     null: false
      t.stock :integer,     null: false
      t.text :comment,     null: false
      t.text :image_path,     null: false


      t.timestamps
    end
  end
end
