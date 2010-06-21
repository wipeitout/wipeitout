class TheplanController < ApplicationController
  # GET /theplan
  # GET /theplan.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @theplans }
    end
  end

end
