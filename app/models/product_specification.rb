class ProductSpecification < ActiveRecord::Base
  belongs_to :product
  has_many :product_specifications
end
