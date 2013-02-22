class BannedUsers < ActiveRecord::Base
  attr_accessible :facebook_id, :ip_address
end
