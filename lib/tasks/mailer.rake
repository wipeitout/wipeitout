desc "Sends emails after scheduled job fires"
task :send_emails => :environment do

  # Get SupporterEmail where completed_date = null order_by commit_date desc
  supporter_emails = SupporterEmail.find(:all, :conditions => "completed_date is NULL", :order => "commit_date ASC" )

  # For each Supporter up to :RAILS_ENV[DAILY_EMAIL_LIMIT] send email
  supporter_emails.each do |se|
    supporter = Supporter.find(se.supporter_id)
    puts se.supporter_id
    puts supporter.accept_more_info?

    if supporter.accept_more_info
      # send email
      puts "accepts info so would be calling mailer here"
      send_email supporter
    end

    # On success set commit_date to Date.today

  end

end

#TODO add emails name to method to make this call dynamic
def send_email(supporter)
  puts "About to call mailer"
  Mailer.deliver_qantas_supporter supporter
rescue Net::SMTPError
  puts "SMTPFatalError calling mailer - this will update db with exceptions"
end

