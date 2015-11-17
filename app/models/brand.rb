class Brand < ActiveRecord::Base
  has_many :products
  mount_uploader :logo, LogoUploader
end
