class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.string :email
      t.string :phone
      t.string :v_street
      t.string :v_zip_code
      t.string :v_state
      t.string :v_country
      t.string :m_p_o_box
      t.string :m_zip_code
      t.string :m_state
      t.string :m_country
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :pinterest_url

      t.timestamps null: false
    end
  end
end
