class RoomRate < ActiveRecord::Base
  
  validates :Name, presence: true
  validates :Buiding, presence: true
  validates :Floor, presence: true
  validates :Floor, numericality: true
  #vaidates :Floor, length: => {:minimum => 1}
 # vaidates :Floor, length: => {:maximum => 2}
  validates :RoomNumber, presence: true
  validates :RoomNumber, numericality: true
 # vaidates :RoomNumber, length: => {:minimum => 1}
  validates :Layout, presence: true
  
end
