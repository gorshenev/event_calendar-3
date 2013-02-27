class Event < ActiveRecord::Base
  attr_accessible :event_date, :event_description, :event_end_time, :event_start_time, :event_title, :user_id
end
