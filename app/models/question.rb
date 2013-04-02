class Question < ActiveRecord::Base
  has_one :rooms_questions
  has_one :room, :through=>:rooms_questions

  attr_accessible :content, :nickname
end
