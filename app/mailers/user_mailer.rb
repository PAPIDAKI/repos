class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail to: user.email, subject: "Welcome"
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.report_tickler.subject
  #
  def report
   # @greeting = "Hi this is the weekly report"
    #@user = user 
    #mail to: user.email,
   #subject: "Weekly REportOfSultanas"
  end

  def report_tickler
  end
end
