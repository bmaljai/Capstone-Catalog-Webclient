class CatalogsController < ApplicationController

  def index
    @capstones = Unirest.get("http://localhost:3000/capstones.json").body
  end

  def show
    #@show = Unirest.get

  end



end
