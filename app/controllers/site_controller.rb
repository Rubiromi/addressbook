class SiteController < ApplicationController

  def index
    @title = "Home"
    users = User.all
    # @users = users_in_range(users, 7).compact
  end

end
