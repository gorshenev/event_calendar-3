class BannedUser < ActiveRecord::Base
  attr_accessible :email, :user_id
  
  def initialize(user)
      banned_user.user_id = user.uid
      banned_user.email = user.email
      banned_user.save!   
  end
end
