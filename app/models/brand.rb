class Brand < ActiveRecord::Base
  has_many :products
  mount_uploader :logo, LogoUploader
  accepts_nested_attributes_for :products
end
