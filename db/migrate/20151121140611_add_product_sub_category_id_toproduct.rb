class AddProductSubCategoryIdToproduct < ActiveRecord::Migration
  def change
    remove_column :products, :product_type_id, :integer
    remove_column :products, :type_position, :integer
    add_reference :products, :brand_product_sub_category, index: true, foreign_key: true
  end
end
