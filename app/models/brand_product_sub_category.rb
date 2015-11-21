class BrandProductSubCategory < ActiveRecord::Base
  belongs_to :brand
  belongs_to :product_sub_category
  has_many :products
  accepts_nested_attributes_for :products

  def brand_name
    brand.name
  end
end
