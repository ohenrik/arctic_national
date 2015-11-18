ActiveAdmin.register Post, as: 'Events' do

  form do |f|
    f.inputs do
      f.input :title
      f.input :post_type, as: :hidden, input_html: { value: 'events' }
      has_many :post_items, sortable: :position, allow_destroy: true do |ff|
        ff.input :image , as: :file, hint: (ff.object.image.present? ? image_tag(ff.object.image.url(:admin_thumb)) : "")
        ff.input :title
        ff.input :content
      end
    end
    f.actions
  end

  index do
    column :title do |post|
      link_to post.title, edit_admin_event_path(post)
    end
    actions
  end

  config.filters = false

  controller do
    def scoped_collection
      Post.where(post_type: 'event')
    end
  end

end
