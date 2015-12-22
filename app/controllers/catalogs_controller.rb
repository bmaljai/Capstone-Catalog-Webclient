class CatalogsController < ApplicationController


  def show

    @error_message = []

    @catalog = Catalog.find(params[:id])

    @error_message << "Student capstone not found!" unless @catalog

  end

end
