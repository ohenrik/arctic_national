class AddPositionToProductSpecifications < ActiveRecord::Migration
  def change
    add_column :product_specifications, :position, :integer
  end
end
