class AddPositionToPostItems < ActiveRecord::Migration
  def change
    add_column :post_items, :position, :integer
  end
end
