class CreateBrandProductSubCategories < ActiveRecord::Migration
  def change
    create_table :brand_product_sub_categories do |t|
      t.references :brand, index: true, foreign_key: true
      t.references :product_sub_category, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
