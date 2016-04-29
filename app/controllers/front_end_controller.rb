class FrontEndController < ApplicationController
  def index
    @types = AppType.all
  end
end
