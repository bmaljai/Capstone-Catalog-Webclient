class CatalogsController < ApplicationController

  def index
    @catalogs = Catalog.all
  end

  def show

    @error_message = []

    @catalog = Catalog.find(params[:id])

    @error_message << "Student capstone not found!" unless @catalog

  end
end
