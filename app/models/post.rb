class Post < ActiveRecord::Base
  has_many :post_items
end
