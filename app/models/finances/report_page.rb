#encoding: utf-8

module Finances
  class ReportPage

    attr_accessor :title, :description

    def initialize(report)
      @description = report.description
      @title = report.title
    end

    def statements
      IndexDrePage.new
    end

    def balance
      IndexEntryPage.new
    end

  end
end

