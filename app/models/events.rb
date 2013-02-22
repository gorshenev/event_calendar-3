class Events < ActiveRecord::Base
  attr_accessible :event_created_at, :event_updated_at, :match_date, :match_desc, :match_id, :match_time, :match_title, :user_id
end
