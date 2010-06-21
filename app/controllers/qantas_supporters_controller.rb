class QantasSupportersController < ApplicationController

  # GET /qantas_supporters/1
  # GET /qantas_supporters/1.xml
  def show
    @qantas_supporter = Supporter.find(params[:id])

    puts "Supporter name is...."
    puts @qantas_supporter.name

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qantas_supporter }
    end
  end

  def index
    @qantas_supporter = Supporter.find(params[:id])

    puts "Supporter name is...."
    puts @qantas_supporter.name

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qantas_supporter }
    end
  end

end
