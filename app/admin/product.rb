ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :brand
      f.input :product_type
      f.input :name
      f.input :second_name
      f.input :image, as: :file, :hint => f.object.image.present? ? image_tag(f.object.image.url(:thumb)) : ""
      has_many :product_specifications, sortable: :position, allow_destroy: true do |ff|
        ff.input :title
        ff.input :description
      end
    end
    f.actions
  end

  index do
    column :name do |product|
      link_to product.name, edit_admin_product_path(product)
    end
    column :brand do |product|
      # To link to edit of associated brand:
      #link_to p.brand.name, edit_admin_brand_path(p.brand)
      product.brand.name
    end
    actions
  end

  config.filters = false

end
