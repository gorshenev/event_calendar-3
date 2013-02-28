class Permission < Struct.new(:user)
  def allow?(controller, action)
    if user.nil? || !user.authorized?
      return true if controller == "sessions"
      return true if controller == "home"
    elsif user.authorized?
      true
    end
    false
  end
end