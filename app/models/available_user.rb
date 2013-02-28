class AvailableUser < ActiveRecord::Base
  attr_accessible :event_id, :name, :user_id, :user_name
end
