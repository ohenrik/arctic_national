ActiveAdmin.register Post, as: 'News' do
  menu parent: 'Posts', priority: 1

  form do |f|
    f.inputs do
      f.input :title
      f.input :post_type, as: :hidden, input_html: { value: 'news' }
      has_many :post_items, sortable: :position, allow_destroy: true do |item|
        item.input :item_type,
          as: :select,
          collection: [['Text', 'text'],['Image', 'image']],
          include_blank: false,
          input_html: { class: 'item_type'}

        item.input :image, as: :file,
          wrapper_html: { class: 'image-fields hidden-field'},
          hint: (item.object.image.present? ? image_tag(item.object.image.url(:admin_thumb)) : "")

        # item.input :title, wrapper_html: { class: 'text-fields'}
        item.input :content, wrapper_html: { class: 'text-fields'}
      end
    end
    f.actions
  end

  index do
    column :title do |post|
      link_to post.title, edit_admin_news_path(post)
    end
    actions
  end

  config.filters = false

  controller do
    def new
      @news = Post.new
      @news.post_items.build
    end

    def scoped_collection
      Post.where(post_type: 'news')
    end
  end

end
