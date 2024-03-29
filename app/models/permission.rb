class Permission < Struct.new(:user)
  def allow?(controller, action)
    if user.nil? || !user.authorized?
      return true if controller == "sesions" && action.in?(%w[create failed])
      return true if controller == "home" && action.in?(%w[index nauth])
      return false if controller == "home" && action.in?(%w[home])
      return false if controller == "user_roles" && action.in?(%w[index show edit new])
      return false if controller == "events" && action.in?(%w[index show edit new])
      return false if controller == "available_users" && action.in?(%w[index show edit new])
      return false if controller == "banned_users" && action.in?(%w[index show edit new])
      return false if controller == "users" && action.in?(%w[index show edit new])
    elsif user.authorized?
       return true if controller == "users" && action.in?(%w[index show edit new])
       return true if controller == "user_roles" && action.in?(%w[index show edit new])
       return true if controller == "events" && action.in?(%w[index show edit new])
       return true if controller == "available_users" && action.in?(%w[index show edit new])
       return true if controller == "banned_users" && action.in?(%w[index show edit new])
       return true if controller == "home" && action.in?(%w[index nauth home])
       return true if controller == "users" && action.in?(%w[index show edit new])
       return true if controller == "sesions" && action.in?(%w[create destroy failed])
       return true if user.authorized?
    end
    true
  end
end