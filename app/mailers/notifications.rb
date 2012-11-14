class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_room_rate.subject
  #
  def new_room_rate(room_rate)
    @room_rate = room_rate
    #mail_to:names.email IS MAIN PROBLEM DOES NOT RECOGNIZE nameS OR email nameS IS NOT PART O ROOMRATE JUST FYI & NOT RECOGNIZING THAT email IS ATTACHED TO name BUT IT IS
    #@greeting = "Hi"

    mail to: "samanthalynn@optonline.net"
  end
end
