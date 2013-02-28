module Permissions
  class MemberPermission < BasePermission
    def initialize(user)
      allow :sessions, [:failure, :create, :destroy]
      allow :home, [:index]
      allow :events, [:new, :index, :show]
    end
  end
end