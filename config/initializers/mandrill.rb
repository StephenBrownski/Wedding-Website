if Rails.env.production?
  # Use mandrill
  ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      ENV['MANDRILL_USERNAME'],
    :password =>       ENV['MANDRILL_APIKEY'],
    :domain =>         'heroku.com',
    :authentication => :plain
  }
else
  # Use MailCatcher http://mailcatcher.me/
  ActionMailer::Base.smtp_settings = {
    :address => 'localhost',
    :port => 1025
  }
end