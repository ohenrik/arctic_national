ActiveAdmin.register Brand do

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      # f.input :logo, as: :file, :hint => f.object.image.present? ? image_tag(f.object.image.url(:thumb)) : ""
    end
    f.actions
  end

  index do
    column :name do |brand|
      link_to brand.name, edit_admin_brand_path(brand)
    end
    column :product_count do |b|
      "Products: #{b.products.count}"
    end
    actions
  end

  config.filters = false

end
