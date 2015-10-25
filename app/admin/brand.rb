ActiveAdmin.register Brand do

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :logo
    end
    f.actions
  end

  index do
    column :name do |brand|
      link_to brand.name, edit_admin_product_path(brand)
    end
    column :product_count do |b|
      "Products: #{b.products.count}"
    end
    actions
  end

end
