#encoding: utf-8

module Finances
  class ReportPage

    attr_accessor :title

    include ActionView::Helpers::OutputSafetyHelper

    def initialize(report)
      @description = report.description
      @title = report.title
    end

    def description
      raw @description.gsub("\n","<br>")
    end

    def statements
      IndexDrePage.new
    end

    def balance
      IndexEntryPage.new
    end

  end
end

