class CreateProductTypes < ActiveRecord::Migration
  def up
    # Fix for missing migration file
    drop_table :product_types if ActiveRecord::Base.connection.table_exists? 'product_types'
    # Normal migration
    create_table :product_types do |t|
      t.string :name
      t.string :type_image
      t.text :description

      t.timestamps null: false
    end
  end

  def down
    drop_table :product_types
  end

end
