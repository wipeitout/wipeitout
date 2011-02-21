class SupermarketMailer < ActionMailer::Base
  
  def pledge(supporter, supermarket)
    subject    'Please help wipe out non-recycled toilet paper'
    recipients supermarket.email_to_address
    from       supporter.email
    sent_on    Time.now
    
    body       :supporter => supporter, :supermarket => supermarket
  end

end
