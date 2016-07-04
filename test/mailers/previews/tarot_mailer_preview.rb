# Preview all emails at http://localhost:3000/rails/mailers/tarot_mailer
class TarotMailerPreview < ActionMailer::Preview

    def tarot_mail_preview
        TarotMailer.angeltarotcarrick_email(User.first)
    end
end
