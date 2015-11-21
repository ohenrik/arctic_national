class ProductCategory < ActiveRecord::Base
  has_many :product_sub_categories, dependent: :destroy
  accepts_nested_attributes_for :product_sub_categories, allow_destroy: true

  validate :must_have_product_sub_category

   def must_have_product_sub_category
     if product_sub_categories.empty? or product_sub_categories.all? {|child| child.marked_for_destruction? }
       errors.add(:base, 'Must have at least one sub category')
     end
   end
end
