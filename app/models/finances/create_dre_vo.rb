module Finances

  class CreateDreVO

    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes
    include DreCommom

    def initialize(params)
      @resource = Dre.new
      @resource.update_attributes(sanitized_params(params))
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
