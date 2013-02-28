module Permissions
  class MemberPermission < BasePermission
    def initialize
      allow :sessions, [:failure, :create, :destroy]
      allow :home, [:index]
    end
  end
end