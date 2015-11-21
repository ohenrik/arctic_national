class Post < ActiveRecord::Base
  has_many :post_items
  accepts_nested_attributes_for :post_items, :allow_destroy => true

end
