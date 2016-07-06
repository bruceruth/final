class ContactMailer < ApplicationMailer
  #default from: message.email

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #  en.contact_mailer.message.subject
  #
  
  #def deliver_message(message)
  #  mail( :to => "angelarotcarrick@gmail.com", :subject => "Test")
  #end
  
  def deliver_message(message)
    subject    message.subject
    body       :message => message
    recipients CONTACT_RECIPIENT # I don't want the address 
    #burried deep in code 
    #=> defined a constant of contact recipient. 
    #set in environment development file
    from       message.email
    sent_on    Time.now
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.custConfirmation.subject
  #
  def custConfirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.adminConfirmation.subject
  #
  def adminConfirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
