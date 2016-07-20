class FrontEndController < ApplicationController
  def index
    count = Website.count
    @site = Website.offset(rand(count)).first
  end
end
