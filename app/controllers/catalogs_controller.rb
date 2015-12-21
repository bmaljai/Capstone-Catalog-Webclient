class CatalogsController < ApplicationController


  def show

    @error_message = []

    id = params[:id]

    @student = Unirest.get("http://localhost:3000/students/#{id}").body

    @error_message << "Student capstone not found!" unless @student

  end

end
