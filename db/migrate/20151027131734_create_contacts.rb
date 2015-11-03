class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :position
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
