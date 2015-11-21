ActiveAdmin.register Contact do
  menu priority: 13

  config.sort_order = 'position_asc'
  config.paginate   = false

  sortable

  form do |f|
    f.inputs 'Contact' do
      f.input :name
      f.input :email
      f.input :phone
    end
    f.actions
  end

  index do
    sortable_handle_column
    column :name do |contact|
      link_to contact.name, edit_admin_contact_path(contact)
    end
    actions
  end

  config.filters = false

end
