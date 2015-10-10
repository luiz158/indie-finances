module Finances
  class ReportsController < ApplicationController

    def index
      @reports = Report.all
    end

    def new
      @report = Report.new
      @current = ReportPage.new(@report)
    end

    def create
      @report = Report.new(params[:report])
      @current = ReportPage.new(@report)
      @report.snapshot = render_to_string("current", :layout => "report")
      if @report.save
      redirect_to reports_path
      else
        render "new"
      end
    end

    def show
      @report = Report.find_by_name(params[:id])
      render(:text => @report.snapshot)
    end

  end
end

