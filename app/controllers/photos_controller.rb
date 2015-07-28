class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form



  end

  def show
    @photo_db_id = params["id"]
    m = Photo.new

    @all_entries = Photo.all
    p =Photo.find(@photo_db_id)

    @p_source = p.source
    @p_caption = p.caption

    @db_count = @all_entries.count
  end

  def destroy
    @photo_db_id = params["id"]
    p = Photo.find(@photo_db_id)

    p.destroy

  end


end
