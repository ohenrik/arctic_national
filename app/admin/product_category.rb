ActiveAdmin.register ProductCategory do
  menu parent: 'Inventory', priority: 1

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :description
      # f.input :category_image, as: :file, hint: (f.object.logo.present? ? image_tag(f.object.logo.url(:admin_thumb)) : "")

      f.has_many :product_sub_categories, heading: 'Sub categories', allow_destroy: true, sortable: :position do |sub_cat|
        sub_cat.input :name
        sub_cat.has_many :brand_product_sub_categories, heading: 'Sort Brands', sortable: :position, new_record: false do |brand|
          brand.input :brand_name, input_html: { disabled: true }
          brand.has_many :products, heading: 'Sort products', sortable: :position, new_record: false do |product|
            product.input :name, input_html: { disabled: true }
          end
        end
      end
    end
    f.actions
  end

  index do
    column :name do |cat|
      link_to cat.name, edit_admin_product_category_path(cat)
    end
    actions
  end

  config.filters = false

  controller do
    def new
      @product_category = ProductCategory.new
      @product_category.product_sub_categories.build name: 'Other'
    end
  end

end
