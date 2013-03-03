class Event < ActiveRecord::Base
  attr_accessible :end_at, :event_date, :event_description, :event_title, :start_at, :user_id
  
  belongs_to :user
end
