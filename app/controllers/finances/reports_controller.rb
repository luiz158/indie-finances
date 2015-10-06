module Finances
  class ReportsController < ApplicationController

    def index
      @reports = Report.all
    end

    def new
      @report = Report.new
    end

    def create
      @report = Report.new(params[:report])
      @current = ReportPage.new
      @report.snapshot = render_to_string("current")
      @report.save

      redirect_to reports_path
    end

    def show
      @report = Report.find(params[:id])
      render(:text => @report.snapshot)
    end

    def current
      @current = ReportPage.new
      render :layout => false
    end

  end
end

