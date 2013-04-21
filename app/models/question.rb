class Question < ActiveRecord::Base
  has_one :rooms_questions
  has_one :room, :through=>:rooms_questions

  attr_accessible :content

  validates :content, :presence => true

  scope :sorted_created_at_desc, order("created_at desc")
  
  scope :newest, lambda { |last_time| where("created_at > ?", last_time).order("created_at desc") }
end
