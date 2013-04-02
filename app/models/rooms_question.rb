class RoomsQuestion < ActiveRecord::Base
  belongs_to :room
  belongs_to :question
  # attr_accessible :title, :body
end
