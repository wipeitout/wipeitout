class PrivacyController < ApplicationController
  # GET /privacy
  # GET /privacy.xml
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @privacies }
    end
  end

end
