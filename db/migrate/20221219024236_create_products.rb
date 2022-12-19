class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :company_id      
      t.string :product_name,     null: false
      t.integer :price,           null: false
      t.integer :stock,           null: false
      t.text :comment,            null: false
      t.text :image_path


      t.timestamps
    end
  end
end
