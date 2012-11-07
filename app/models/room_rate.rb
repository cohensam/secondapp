class RoomRate < ActiveRecord::Base
  
  validates :Name, presence: true
  validates :Building, presence: true
  validates :Floor, presence: true
  validates :Floor, numericality: true
  #vaidates :Floor, length: => {:minimum => 1}
 # vaidates :Floor, length: => {:maximum => 2}
  validates :RoomNumber, presence: true
  validates :RoomNumber, numericality: true
 # vaidates :RoomNumber, length: => {:minimum => 1}
  validates :Layout, presence: true
 
  attr_accessible :Floor, :Building, :Layout, :Name, :RoomNumber, :Condition, :Roommate
  
  
  scope :high_floor, where('Floor > ?', 10)
  scope :low_floor, where('Floor < ?', 10)
  
end
