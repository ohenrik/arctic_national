class AddProductTypeIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :product_type, index: true, foreign_key: true
    add_column :products, :type_position, :integer
  end
end
