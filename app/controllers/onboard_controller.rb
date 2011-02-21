class OnboardController < ApplicationController

  def index
    @onboard = Onboard.all

    respond_to do |format|
      format.html # showhtml.erb
      format.xml  { render :xml => @onboard }
    end
  end


end
