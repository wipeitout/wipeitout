class UnsubscribeController < ApplicationController
  # GET /unsubscribe
  # GET /unsubscribe.xml
  def index
    @unsubscribes = Unsubscribe.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unsubscribes }
    end
  end

  # GET /unsubscribe/1
  # GET /unsubscribe/1.xml
  def show
    @unsubscribe = Unsubscribe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unsubscribe }
    end
  end

  # GET /unsubscribe/new
  # GET /unsubscribe/new.xml
  def new
    @unsubscribe = Unsubscribe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unsubscribe }
    end
  end

  # GET /unsubscribe/1/edit
  def edit
    @unsubscribe = Unsubscribe.find(params[:id])
  end

  # PUT /unsubscribe/1
  # PUT /unsubscribe/1.xml
  def update
    @unsubscribe = Unsubscribe.find(params[:id])

    respond_to do |format|
      if @unsubscribe.update_attributes(params[:unsubscribe])
        flash[:notice] = 'Unsubscribe was successfully updated.'
        format.html { redirect_to(@unsubscribe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unsubscribe.errors, :status => :unprocessable_entity }
      end
    end
  end

end
