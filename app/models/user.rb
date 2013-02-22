class User < ActiveRecord::Base
  attr_accessible :authorized, :email, :ip_address, :name, :oauth_expires_at, :oauth_token, :provider, :role_id, :uid
end
