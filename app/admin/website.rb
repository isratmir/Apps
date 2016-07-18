ActiveAdmin.register Website do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :title, :url, :description, :keywords, :image, category_ids: []

  index do
    selectable_column
    column :id
    column :title
    column "Url" do |website|
      link_to website.url, website.url
    end
    column "Category" do |website|
      (website.categories.map{ |c| c.title }).join("\n").html_safe
    end
    column "Image" do |app|
      image_tag app.image.url(:thumb)
    end
    column :created_at
    column :updated_at
    actions
  end

  form multipart: true do |f|
    f.inputs "Website details" do
      #f.input :category_id, :as => :select, :collection => Category.all.map{|u| ["#{u.title}", u.id]}
      f.input :category_ids, :label => "Categories", :as => :select, :input_html => {:multiple => true}, collection: Category.all
      f.input :title
      f.input :url
      f.input :description
      f.input :keywords
      f.input :image, required: false
    end
    f.actions
  end

end
