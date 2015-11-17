class Product < ActiveRecord::Base
  belongs_to :brand
  has_many :product_specifications

  accepts_nested_attributes_for :product_specifications, :allow_destroy => true

  mount_uploader :image, ImageUploader
end
