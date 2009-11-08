class SupportersController < ApplicationController

  def create

    posted_supporter = params[:supporter]

    pledges = extract_pledges(posted_supporter)

    supporter = Supporter.create!(posted_supporter)

    #add each pledge to commitment table for the supporter
    create_commitments(pledges, supporter)

    @supporter_count = Supporter.all.count

    respond_to do |format|
      format.js { render :layout => false }
    end

  end

  def extract_pledges(posted_supporter)
    pledges = Array.new

    if posted_supporter[:now].eql?(1.to_s)
      pledges << Pledge.find(:first, :conditions => "name = 'now'")
    end

    if posted_supporter[:by_2014].eql?(1.to_s)
      pledges << Pledge.find(:first, :conditions => "name = 'by_2014'")
    end

    posted_supporter.delete :now
    posted_supporter.delete :by_2014

    return pledges
  end

  def create_commitments(pledges, supporter)
    pledges.each do |p|
      Commitment.create(:pledge_id => p.id) do |c|
        c.supporter_id = supporter.id
      end
    end
  end

end
