class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :second_name
      t.string :image
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
