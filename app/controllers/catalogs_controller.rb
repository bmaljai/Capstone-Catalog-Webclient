class CatalogsController < ApplicationController

  def show

    @error_message

    id = params[:id]

    @student = Unirest.get("http://localhost:3000/students/#{id}").body

    @error_message << "Student capstone not found!" unless @student

    capstones_hash = Unirest.get("http://localhost:3000/capstones/index").body

    @capstone = find_student_capstone(capstones_hash, id)
    
    @error_msg << "Student capstone not found!" unless @capstone

  end


  private

  def find_student_capstone (capstones_hash, student_id)

    capstones_hash.each do |capstone|

      return capstone if capstone["student_id"]==id
      end

    end

    return nil

  end


end
