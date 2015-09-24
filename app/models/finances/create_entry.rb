module Finances
  class CreateEntry

    include Commom

    def initialize(params)
      @entry = Entry.new(sanitized_params(params[:entry]))
      @entry.date = DateTime.now
    end

    def save
      #TODO: Add validation here.
      raise "This Entry has amount nil." if @entry.amount.nil?
      @entry.save
    end

  end
end

