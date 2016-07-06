# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/message
  def message
    ContactMailer.message
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/custConfirmation
  def custConfirmation
    ContactMailer.custConfirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/adminConfirmation
  def adminConfirmation
    ContactMailer.adminConfirmation
  end

end
