class WhattobuyController < ApplicationController
  def index
    @whattobuy = Whattobuy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @whattobuy }
    end

  end

end
