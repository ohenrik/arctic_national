class CreateProductTypeCategories < ActiveRecord::Migration
  def change
    create_table :product_type_categories do |t|
      t.string :name
      t.integer :position
      t.references :product_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
