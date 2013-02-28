class BannedUser < ActiveRecord::Base
  attr_accessible :email, :user_id
end
