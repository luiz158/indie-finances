module Finances
  class IndexEntryPage

    include MoneyHelper

    def rows
      lines = []
      patrimony = 0

      Entry.all.each do |entry|
        patrimony += entry.amount
        lines << { date: entry.date.strftime("%d-%m-%Y"), amount: to_money_unit(entry.amount), description: entry.description, id: entry.id, kind: "entry" }
        lines << { date: entry.date.strftime("%d-%m-%Y"), amount: to_money_unit(patrimony), description: "", kind: "patrimony" }
      end

      lines
    end
  end
end
