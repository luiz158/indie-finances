module Finances
  class CreateEntry

    def initialize(params)
      @entry = Entry.new(params[:entry])
      @entry.date = DateTime.now
    end

    def save
      #TODO: Add validation here.
      raise "This Entry has amount nil." if @entry.amount.nil?
      @entry.save
    end

  end
end

