class ProductSubCategory < ActiveRecord::Base
  belongs_to :product_category
  has_many :brand_product_sub_categories, dependent: :destroy
  has_many :brands, through: :brand_product_sub_categories
  accepts_nested_attributes_for :brand_product_sub_categories, :brands
end
