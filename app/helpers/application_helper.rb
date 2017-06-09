module ApplicationHelper
  def menu
    @categories = Category.all

    render template: "front_end/menu"
  end
end
