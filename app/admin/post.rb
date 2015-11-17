ActiveAdmin.register Post do

  form do |f|
    f.inputs do
      f.input :title

      # has_many :post_items, sortable: :position do |ff|
      #   ff.input :image, as: :file, :hint => f.object.image.present? ? image_tag(f.object.image.url(:thumb)) : ""
      #   ff.input :description
      # end
    end
    f.actions
  end

  index do
    column :title do |post|
      link_to post.title, edit_admin_post_path(post)
    end
    actions
  end

  config.filters = false

end
