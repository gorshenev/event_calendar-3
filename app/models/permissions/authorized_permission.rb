module Permissions
  class AuthorizedPermission < BasePermission
    def initialize(user)
      allow_all
    end
  end
end