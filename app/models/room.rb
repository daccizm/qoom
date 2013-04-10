class Room < ActiveRecord::Base
  has_one :users_rooms
  has_one :user, :through=>:users_rooms

  has_many :rooms_questions
  has_many :questions, :through=>:rooms_questions

  has_many :cooperations

  attr_accessible :name
end
