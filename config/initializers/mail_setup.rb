ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "loicginoux.com",  
  :user_name            => "lginoux.pro@gmail.com",  
  :password             => "pigaloma",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  ,
  :openssl_verify_mode  => OpenSSL::SSL::VERIFY_NONE
}