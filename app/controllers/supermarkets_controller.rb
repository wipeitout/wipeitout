class SupermarketsController < ApplicationController
  # GET /supermarkets
  # GET /supermarkets.xml
  def index
    @supermarkets = Supermarket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supermarkets }
    end
  end

end
