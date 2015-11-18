class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :product_type
  has_many :product_specifications

  accepts_nested_attributes_for :product_specifications, :allow_destroy => true

  mount_uploader :image, ImageUploader

  def brand_name
    brand.name
  end

  def type_name
    product_type.name
  end

end
