class CreateGeneralContents < ActiveRecord::Migration
  def change
    create_table :general_contents do |t|
      t.string :key
      t.string :key_lable
      t.text :value
      t.string :content_type

      t.timestamps null: false
    end
  end
end
