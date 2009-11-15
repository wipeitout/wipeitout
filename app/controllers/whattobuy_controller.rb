class WhattobuyController < ApplicationController
  def index
    @whattobuy = Whattobuy.all

    respond_to do |format|
      format.html # showhtml.erb
      format.xml  { render :xml => @whattobuy }
    end

  end

end
