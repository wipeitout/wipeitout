class Mailer < ActionMailer::Base

  # method name matches the name of email in Emails
  def qantas_supporter(supporter)
    subject      "Recycled Toilet Paper: Get Qantas On Board!"
    recipients   supporter.email
    from         "theteam@wipeitout.com.au"
    sent_on      Time.now
    content_type "text/html"

    body       :supporter => supporter
  end

  # method name matches the name of email in Emails
  def qantas_letter(supporter)
    subject      "Qantas, can you help save the forests and use only recycled toilet paper "
    recipients   "someone@qantas.com.au"
    from         supporter.email
    sent_on      Time.now
    content_type "text/html"

    body       :supporter => supporter
  end


end
