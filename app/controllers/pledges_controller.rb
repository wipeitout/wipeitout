class PledgesController < ApplicationController
  # GET /pledges
  # GET /pledges.xml
  def index
    @pledges = Pledge.all

    respond_to do |format|
      format.html # showhtml.erb
      format.xml  { render :xml => @pledges }
    end
  end
end
