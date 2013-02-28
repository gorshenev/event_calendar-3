class BannedUser < ActiveRecord::Base
  attr_accessible :email, :user_id
  
  def ban_user(user)
      banned_user = BannedUser.new
      banned_user.user_id = user.uid
      banned_user.email = user.email
      banned_user.save!   
  end
end
