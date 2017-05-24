class FrontEndController < ApplicationController
  def index
    @categories = Category.all

=begin
    count = Website.count
    @site = Website.offset(rand(count)).first
=end
  end
end
