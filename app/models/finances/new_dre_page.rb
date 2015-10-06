module Finances

  class NewDrePage

    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes

    def initialize
      @resource = Dre.new
    end

    def persisted?
      false
    end

    def errors
      []
    end

    def action_path
      "/finances/dres"
    end
  end

end

