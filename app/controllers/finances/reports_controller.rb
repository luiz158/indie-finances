module Finances
  class ReportsController < ApplicationController

    def show
      @report = ReportPage.new
    end

  end
end

