module Finances

  class NewEntryPage

    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    def initialize
      @resource = Entry.new
    end

    def persisted?
      false
    end

    def errors
      []
    end

    def action_path
      "/finances/entries"
    end

    def description
    end

    def amount
    end
  end

end

