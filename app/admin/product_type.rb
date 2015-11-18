ActiveAdmin.register ProductType do

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      # f.input :type_image, as: :file, hint: (f.object.logo.present? ? image_tag(f.object.logo.url(:admin_thumb)) : "")

      has_many :products, heading: 'Sort products', sortable: :type_position, new_record: false do |ff|
        ff.input :brand_name, label: 'Brand', input_html: { disabled: true }
        ff.input :name, input_html: { disabled: true }
        ff.input :second_name, input_html: { disabled: true }
      end
    end
    f.actions
  end

  index do
    column :name do |type|
      link_to type.name, edit_admin_brand_path(type)
    end
    column :product_count do |type|
      "Products: #{type.products.count}"
    end
    actions
  end

  config.filters = false

end
