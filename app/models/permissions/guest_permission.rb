module Permissions
  class GuestPermission < BasePermission
    def initialize
      allow :sessions, [:failure, :create, :destroy]
      allow :home, [:index]
    end
  end
end