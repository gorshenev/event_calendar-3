module Permissions
  class GuestPermission < BasePermission
    def initialize
      allow :sessions, [:failure, :create, :destroy]
      allow :home, [:index]
      allow :events, [:new, :index, :show]
    end
  end
end