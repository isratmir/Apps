module ApplicationHelper
  def menu
    @categories = Category.all
  end
end
