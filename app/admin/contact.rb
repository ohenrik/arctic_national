ActiveAdmin.register Contact do

  form do |f|
    f.inputs 'Contact' do
      f.input :name
      f.input :position
      f.input :email
      f.input :phone
    end
    f.actions
  end
  
  index do
    # Gjør sorterbar!!!
    column :name do |contact|
      link_to contact.name, edit_admin_contact_path(contact)
    end
    actions
  end

  config.filters = false

end
