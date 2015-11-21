ActiveAdmin.register Brand do
  menu parent: 'Inventory', priority: 2

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :logo, as: :file, hint: (f.object.logo.present? ? image_tag(f.object.logo.url(:admin_thumb)) : "")
      f.input :remove_logo, as: :boolean, required: :false, label: 'Remove logo' unless f.object.logo.blank?
    end
    f.actions
  end

  index do
    column :name do |brand|
      link_to brand.name, edit_admin_brand_path(brand)
    end
    column :product_count do |brand|
      "Products: #{brand.products.count}"
    end
    actions
  end

  config.filters = false

end
