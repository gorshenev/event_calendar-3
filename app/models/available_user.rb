class AvailableUser < ActiveRecord::Base
  attr_accessible :available, :event_id, :maybe, :not_available, :user_id
end
