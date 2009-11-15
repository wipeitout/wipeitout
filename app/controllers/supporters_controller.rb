class SupportersController < ApplicationController

  def create

    posted_supporter = params[:supporter]

    pledges = extract_pledges(posted_supporter)
    supermarkets = extract_supermarkets(posted_supporter)

    respond_to do | format |
      #if verify_recaptcha()

        supporter = Supporter.create!(posted_supporter)

        #add each pledge to commitment table for the supporter
        create_commitments(pledges, supporter)

        send_emails(supermarkets, supporter)

        @supporters = Supporter.find(:all)

        format.js { render :layout => false }

      #else
      #
      #  @supporters = Supporter.find(:all)
      #  flash[:error] = "Recaptcha error, please re-enter the code and click submit."
      #  format.js { render :layout => false }
      #
      #end
    end

  end

  protected

  def send_emails(supermarkets, supporter)
    supermarkets.each do | s |
      SupermarketMailer.deliver_pledge(supporter, s)
    end
  end

  def create_commitments(pledges, supporter)
    pledges.each do |p|
      Commitment.create(:pledge_id => p.id) do |c|
        c.supporter_id = supporter.id
      end
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

  def extract_supermarkets(posted_supermarkets)
    supermarkets = Array.new

    if posted_supermarkets[:woolworths].eql?(1.to_s)
      supermarkets << Supermarket.find(:first, :conditions => "name = 'Woolworths'")
    end

    if posted_supermarkets[:coles].eql?(1.to_s)
      supermarkets << Supermarket.find(:first, :conditions => "name = 'Coles'")
    end

    if posted_supermarkets[:iga].eql?(1.to_s)
      supermarkets << Supermarket.find(:first, :conditions => "name = 'IGA'")
    end

    if posted_supermarkets[:aldi].eql?(1.to_s)
      supermarkets << Supermarket.find(:first, :conditions => "name = 'ALDI'")
    end

    posted_supermarkets.delete :woolworths
    posted_supermarkets.delete :coles
    posted_supermarkets.delete :iga
    posted_supermarkets.delete :aldi

    return supermarkets
  end

end
