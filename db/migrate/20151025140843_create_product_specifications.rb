class CreateProductSpecifications < ActiveRecord::Migration
  def change
    create_table :product_specifications do |t|
      t.string :title
      t.string :description
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
