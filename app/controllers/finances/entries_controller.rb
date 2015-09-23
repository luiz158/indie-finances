module Finances
  class EntriesController < ApplicationController
    def index
      @balance = IndexEntryPage.new
    end

    def new
      @resource = NewEntryPage.new
    end

    def create
      @resource = CreateEntry.new(params)
      @resource.save

      redirect_to entries_path
    end
  end
end
