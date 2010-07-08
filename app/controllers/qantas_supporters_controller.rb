class QantasSupportersController < ApplicationController

  # GET /qantas_supporters/1
  # GET /qantas_supporters/1.xml
  def show
    @qantas_supporter = Supporter.find(params[:id])

    puts "Supporter name is...."
    puts @qantas_supporter.name

#    respond_to do |format|
    redirect_to :action => 'update', :id => @qantas_supporter.id
#      format.html # show.html.erb
#      format.xml  { render :xml => @qantas_supporter }
#    end
  end


  def create
    puts "In create method"
  end

  # PUT /tests/1
  # PUT /tests/1.xml
  def update

    @qantas_supporter = Supporter.find(params[:id])

    puts "In update method doing PUT with "
    puts @qantas_supporter.id
    puts @qantas_supporter.name

    # id of qantas email set in emails table
    qantas_letter_id = 2

    respond_to do |format|
      if SupporterEmail.create(:email_id => qantas_letter_id, :supporter_id => @qantas_supporter.id, :commit_date => Date.today)
        format.html
      end
    end


  end

end
