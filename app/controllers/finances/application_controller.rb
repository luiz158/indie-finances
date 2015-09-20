module Finances
  class ApplicationController < ::ApplicationController
    layout "admin"
    before_filter :authenticate_admin
  end
end
