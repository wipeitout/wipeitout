class UnsubscribeController < ApplicationController

  # GET /unsubscribe
  # GET /unsubscribe.xml
  def index
#    @unsubscribes = Unsubscribe.all
    @unsubscribe = Unsubscribe.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unsubscribes }
    end
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
