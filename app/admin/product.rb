ActiveAdmin.register Product do
  menu parent: 'Inventory', priority: 3

  form do |f|
    if f.object.persisted?
      sub_category = f.object.brand_product_sub_category.product_sub_category
      category = sub_category.product_category

      sub_categories = category.product_sub_categories
      categories = ProductCategory.all
    else
      categories = ProductCategory.all
      sub_categories = categories.first.product_sub_categories
    end

    f.inputs do
      f.input :brand, include_blank: false

      f.input :product_category,
        as: :select,
        collection: categories,
        include_blank: false,
        selected: (category.present? ? category.id : nil)

      f.input :product_sub_category,
        as: :select,
        collection: sub_categories,
        include_blank: false,
        selected: (sub_category.present? ? sub_category.id : nil)

      f.input :name
      f.input :second_name
      f.input :image, as: :file, :hint => f.object.image.present? ? image_tag(f.object.image.url(:thumb)) : ""
      f.input :remove_image, as: :boolean, required: :false, label: 'Remove image' unless f.object.image.blank?
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
    column :second_name
    column :brand do |product|
      # To link to edit of associated brand:
      #link_to p.brand.name, edit_admin_brand_path(p.brand)
      product.brand.name
    end
    column :product_type do |product|
      # To link to edit of associated brand:
      #link_to p.brand.name, edit_admin_brand_path(p.brand)
      product.product_sub_category.product_category.name
    end
    actions
  end

  member_action :filtered_sub_categories, method: :get do
    @categories = ProductSubCategory.all.where(product_category: params[:id]).order(position: :asc)
    render json: @categories
  end

  controller do
    def create
      @product = Product.new(params[:product])
      @product
        .build_brand_product_sub_category(
          brand_id: params[:product][:brand_id],
          product_sub_category_id: params[:product][:product_sub_category_id])

      if @product.save
        redirect_to admin_product_path(@product)
      end
    end

    def update
      @product = Product.find(params[:id])
      @product.update(params[:product])
      @product
        .brand_product_sub_category.update(
          brand_id: params[:product][:brand_id],
          product_sub_category_id: params[:product][:product_sub_category_id])

      if @product.save
        redirect_to admin_product_path(@product)
      end
    end
  end

  config.filters = false

end
