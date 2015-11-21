class Brand < ActiveRecord::Base
  has_many :brand_product_sub_categories, dependent: :destroy
  has_many :product_sub_categories, through: :brand_product_sub_categories
  has_many :products, through: :brand_product_sub_categories
  mount_uploader :logo, LogoUploader
end
