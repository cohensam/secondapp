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
  validates :condition, presence: true
 
  attr_accessible :floor, :building, :layout, :name, :roomnumber, :condition, :roommate
  
  
  scope :high_floor, where('floor > ?', 10)
  scope :low_floor, where('floor < ?', 10)
  scope :excellent, where('condition = ?', "Excellent")
  scope :good, where('condition = ?', "Good")
  scope :average, where('condition = ?', "Average")
  scope :poor, where('condition = ?', "Poor")
  scope :uninhabitable, where('condition = ?', "Uninhabitable")
  
end
