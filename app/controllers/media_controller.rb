class MediaController < ApplicationController
  # GET /media
  # GET /media.xml
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medias }
    end
  end

end
