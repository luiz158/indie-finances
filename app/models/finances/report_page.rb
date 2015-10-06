#encoding: utf-8

module Finances
  class ReportPage

    def text
      "Este Mês o resultado foi bom."
    end

    def statements
      IndexDrePage.new
    end

    def balance
      IndexEntryPage.new
    end

  end
end

