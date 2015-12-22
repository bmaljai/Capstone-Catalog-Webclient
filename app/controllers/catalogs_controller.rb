class CatalogsController < ApplicationController

  def index
    @capstones = Unirest.get("http://localhost:3000/students.json").body
  end

  def show

    @error_message = []

    @catalog = Catalog.find(params[:id])

    @error_message << "Student capstone not found!" unless @catalog

  end
end
