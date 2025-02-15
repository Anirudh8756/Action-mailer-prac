class UserMailer < ApplicationMailer
    default from: 'from@example.com'
    layout 'mailer'

    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Welcome to The Website.!!' )
    end

    def confirmation_mailer(user)
        @user = user
        mail(to: @user.email, subject: 'Suspicious login')
    end
end
