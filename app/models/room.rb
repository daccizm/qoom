class Room < ActiveRecord::Base
  has_many :rooms_questions
  has_many :questions, :through=>:rooms_questions

  attr_accessible :name
end
