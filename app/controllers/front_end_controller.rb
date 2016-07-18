class FrontEndController < ApplicationController
  def index
    maxId = Website.maximum('id')
    minId = Website.minimum('id')

    @site = Website.find(rand(minId .. maxId))
  end
end
