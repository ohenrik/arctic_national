class CreatePostItems < ActiveRecord::Migration
  def change
    create_table :post_items do |t|
      t.string :item_type
      t.string :image
      t.text :caption
      t.string :title
      t.text :content
      t.references :post, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
