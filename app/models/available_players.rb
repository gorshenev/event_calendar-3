class AvailablePlayers < ActiveRecord::Base
  attr_accessible :match_id, :name, :user_id
end
