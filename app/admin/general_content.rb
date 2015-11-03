ActiveAdmin.register GeneralContent do
  actions :all, except: [:new, :destroy, :create]

  config.sort_order = 'created_at_asc'

  index do
    column 'Type',  :key_lable, sortable: false
    column 'Content',  :value, sortable: false
    actions
  end

  form do |f|
    f.inputs do
      f.input :value
    end
    f.actions
  end

end
