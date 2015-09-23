module Finances
  class IndexEntryPage
    def rows
      lines = []
      patrimony = 0

      Entry.all.each do |entry|
        patrimony += entry.amount
        lines << { date: entry.date.strftime("%d-%m-%Y"), amount: entry.amount.to_s, description: entry.description, kind: "entry" }
        lines << { date: entry.date.strftime("%d-%m-%Y"), amount: patrimony.to_s, description: "", kind: "patrimony" }
      end

      lines
    end
  end
end
