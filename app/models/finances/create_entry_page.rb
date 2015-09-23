module Finances
  class CreateEntryPage

    def initialize(params)
      @entry = Entry.new(params[:entry])
      @entry.date = DateTime.now
    end

    def save
      @entry.save
    end

  end
end

