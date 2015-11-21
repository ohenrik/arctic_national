ActiveAdmin.register Brand do
  menu parent: 'Inventory', priority: 2

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :logo, as: :file, hint: (f.object.logo.present? ? image_tag(f.object.logo.url(:admin_thumb)) : "")

      # has_many :products, heading: 'Sort products', sortable: :position, new_record: false do |ff|
      #   ff.input :name, input_html: { disabled: true }
      #   ff.input :second_name, input_html: { disabled: true }
      #   ff.input :type_name, label: 'Product type', input_html: { disabled: true }
      # end
    end
    f.actions
  end

  index do
    column :name do |brand|
      link_to brand.name, edit_admin_brand_path(brand)
    end
    # column :product_count do |b|
    #   "Products: #{b.products.count}"
    # end
    actions
  end

  config.filters = false

end
