class FactsController < ApplicationController
  # GET /facts
  # GET /facts.xml
  def index
    @facts = Fact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facts }
    end
  end
end
