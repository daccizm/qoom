class Question < ActiveRecord::Base
  has_one :rooms_questions
  has_one :room, :through=>:rooms_questions

  attr_accessible :content, :nickname

  scope :sorted_created_at_desc, order("created_at desc")
  
end
