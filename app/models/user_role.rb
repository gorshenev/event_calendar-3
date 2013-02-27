class UserRole < ActiveRecord::Base
  attr_accessible :description, :role, :user_id
end
