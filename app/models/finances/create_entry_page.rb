module Finances
  class CreateEntryPage

    def initialize(params)
      @entry = Entry.new(params[:entry])
      @entry.date = DateTime.now
    end

    def save
      #TODO: Add validation here.
      raise if @entry.amount.nil?
      @entry.save
    end

  end
end

