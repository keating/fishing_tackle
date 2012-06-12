class UserMailer < ActionMailer::Base
  default :from => "outofclouds@gmail.com"

  def registration_confirmation
    mail(:to => "outofclouds@gmail.com", :subject => "Registered")
  end
end
