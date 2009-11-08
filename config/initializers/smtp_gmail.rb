ActionMailer::Base.smtp_settings = {
        :address => "smtp.gmail.com",
        :port => 587,
        :authentication => :plain,
        :enable_starttls_auto => true,
        :user_name => "noreply@gmail_or_your_google_domain.com",
        :password => "chucknorris"
}