class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_room_rate.subject
  #
  def new_room_rate(room_rate)
    @room_rate = room_rate
    #mail_to:room_rate.user.email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
