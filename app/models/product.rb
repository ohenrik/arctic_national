class Product < ActiveRecord::Base
  belongs_to :brand_product_sub_category

  has_one :brand, through: :brand_product_sub_category
  has_one :product_sub_category, through: :brand_product_sub_category

  has_many :product_specifications, dependent: :destroy
  accepts_nested_attributes_for :product_specifications, allow_destroy: true

  mount_uploader :image, ImageUploader

  attr_accessor :product_category, :product_sub_category_id

  def brand_name
    brand.name
  end

  def product_category
    brand_product_sub_category.product_sub_category.product_category.name unless brand_product_sub_category.blank?
  end

end
