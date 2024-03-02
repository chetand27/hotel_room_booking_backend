class ApplicationController < ActionController::API
  # as per requirment set first user as a default logged in user
  def current_user
    User.first
  end
end
