=begin module Permissions
  def self.permission_for(user)
    if user.nil?
      GuestPermission.new
    elsif user.authorized?
      AuthorizedPermission.new(user)  
    else
      MemberPermission.new(user)
    end
  end
end
=end
class Permissions
  def initialize(user)
    allow :home, [:index]
    allow :sessions, [:new, :create, :destroy]
    allow :users, [:new, :edit, :show, :index]
    if user
      allow_all
     end
  end
  
  def allow?(controller, action, resource = nil)
    allowed = @allow_all || @allowed_actions[[controller.to_s, action.to_s]]
    allowed && (allowed == true || resource && allowed.call(resource))
  end
  
  def allow_all
    @allow_all = true
  end
  
  def allow(controllers, actions, &block)
    @allowed_actions ||= {}
    Array(controllers).each do |controller|
      Array(actions).each do |action|
        @allowed_actions[[controller.to_s, action.to_s]] = block || true
      end
    end
  end
end