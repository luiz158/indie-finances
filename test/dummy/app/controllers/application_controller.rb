class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin
    # This would be implemented by the host app
  end
end
