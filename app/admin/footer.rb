ActiveAdmin.register Footer do

  form do |f|
    f.inputs 'Contact' do
      f.input :email
      f.input :phone
    end
    f.inputs 'Visit' do
      f.input :v_street, label: "Street"
      f.input :v_zip_code, label: "Zip code"
      f.input :v_state, label: "State"
      f.input :v_country, as: :string, label: "Country"
    end
    f.inputs 'Mail' do
      f.input :m_p_o_box, label: "P.O. Box"
      f.input :m_zip_code, label: "Zip code"
      f.input :m_state, label: "State"
      f.input :m_country, as: :string, label: "Country"
    end
    f.inputs 'Mail' do
      f.input :facebook_url
      f.input :twitter_url
      f.input :linkedin_url
      f.input :pinterest_url
    end
    f.actions
  end
  index do
    column :title
    actions
  end

end
