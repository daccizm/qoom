class Cooperation < ActiveRecord::Base
  belongs_to :room
  attr_accessible :account
end
