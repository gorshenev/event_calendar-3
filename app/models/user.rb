class User < ActiveRecord::Base
  attr_accessible :authorized, :email, :name, :oauth_expires_at, :oauth_token, :provider, :uid
end
