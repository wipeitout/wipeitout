#ActionMailer::Base.smtp_settings = {
#        :address        => "smtp.gmail.com",
#        :port           => 587,
#        :authentication => :plain,
#        :enable_starttls_auto => true,
#        :user_name      => "aaron@wipeitout.com.au",
#        :password       => "aaron77"
#}


#ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
        :enable_starttls_auto => true, 
        :address => "smtp.gmail.com",
        :domain => "wipeitout.com.au",
        :port => 587,
        :authentication => :plain,
        :user_name => "aaron@wipeitout.com.au",
        :password => "aaron77" }
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_charset = "utf-8"
