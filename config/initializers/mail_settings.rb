# SMTP Server
ActionMailer::Base.smtp_settings = {
#  oldsever
#  :from => "master@kembo-net.cn"  ,
#  :address => "mail.kembo-net.com",
#  :domain => "kembo-net.com",
#  :user_name => "mailmaster@kembo-net.com",
#  :password => "mailmaster2008",
#  :authentication => "login"

#  new server
    :address => 'mail.kembo-soft.com',
    :port =>  25,
    :domain => 'kembo-soft.com',
    :authentication => :cram_md5,
    :user_name => 'sender@kembo-soft.com',
    :password => 'sender2008'
}

# Default url for options
#ActionMailer::Base.default_url_options = { :host => App[:website] }
#ActionMailer::Base.default_content_type = "text/html"
#ActionMailer::Base.default_implicit_parts_order =["text/html", "text/enriched", "text/plain"]
#ActionMailer::Base.default_charset  = 'utf-8'
#ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options[:host] = "localhost:3000"