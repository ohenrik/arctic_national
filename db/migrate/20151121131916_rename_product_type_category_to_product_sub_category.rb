class RenameProductTypeCategoryToProductSubCategory < ActiveRecord::Migration
  def self.up
    rename_table :product_type_categories, :product_sub_categories
  end
  def self.down
    rename_table :product_sub_categories, :product_type_categories
  end
end
