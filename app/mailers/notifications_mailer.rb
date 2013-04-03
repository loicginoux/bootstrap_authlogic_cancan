class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@loicginoux.com"
  default :to => "lginoux.pro@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[loicginoux.com] #{message.subject}")
  end

end
