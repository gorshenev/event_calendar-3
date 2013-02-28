class Permission < Struct.new(:user)
  def allow?(controller, action)
    if user.nil? || !user.authorized?
      return true if controller == "sessions"
      return true if controller == "home"
    elsif user
       return true if controller == "users" && action.in?(%w[index show edit new])
       return true if controller == "user_roles" && action.in?(%w[index show edit new])
       return true if controller == "events" && action.in?(%w[index show edit new])
       return true if controller == "available_users" && action.in?(%w[index show edit new])
       return true if controller == "banned_users" && action.in?(%w[index show edit new])
       return true if controller == "home" && action.in?(%w[index])
       return true if controller == "users" && action.in?(%w[index show edit new])
       return true if controller == "sesions" && action.in?(%w[create destroy failed])
       return true if user.authorized?
    end
    false
  end
end