class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_room_rate.subject
  #
  def new_room_rate(room_rate)
    @room_rate = room_rate
    #mail_to:names.email IS MAIN PROBLEM DOES NOT RECOGNIZE NAMES OR EMAIL NAMES IS NOT PART O ROOMRATE JUST FYI & NOT RECOGNIZING THAT EMAIL IS ATTACHED TO NAME BUT IT IS
    #@greeting = "Hi"

    mail to: "samanthalynn@optonline.net"
  end
end
