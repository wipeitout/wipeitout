class PartnersController < ApplicationController
  # GET /partners
  # GET /partners.xml
  def index
    @partners = Partner.all

    respond_to do |format|
      format.html # show.html.erbrb      format.xml  { render :xml => @partners }
    end
  end
end
