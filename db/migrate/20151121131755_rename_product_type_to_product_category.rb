class RenameProductTypeToProductCategory < ActiveRecord::Migration
  def self.up
    rename_table :product_types, :product_categories
    rename_column :product_type_categories, :product_type_id, :product_category_id
  end
  def self.down
    rename_table :product_categories, :product_types
    rename_column :product_type_categories, :product_category_id, :product_type_id
  end
end
