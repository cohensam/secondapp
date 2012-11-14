class RoomRate < ActiveRecord::Base
  
  validates :name, presence: true
  validates :building, presence: true
  validates :floor, presence: true
  validates :floor, numericality: true
  #vaidates :floor, length: => {:minimum => 1}
 # vaidates :floor, length: => {:maximum => 2}
  validates :roomnumber, presence: true
  validates :roomnumber, numericality: true
 # vaidates :roomnumber, length: => {:minimum => 1}
  validates :layout, presence: true
 
  attr_accessible :floor, :building, :layout, :name, :roomnumber, :condition, :roommate
  
  
  scope :high_floor, where('floor > ?', 10)
  scope :low_floor, where('floor < ?', 10)
  
end
