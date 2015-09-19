module Finances
  class UpdateDreVO
    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes
    include DreCommom

    def initialize(params)
      @resource = Dre.find(params[:id])
      @resource.update_attributes(sanitized_params(params))
    end

    def id
      @resource.id
    end

    def persisted?
      true
    end

    def errors
      []
    end

    def action_path
      "/finances/dres/#{@resource.id}"
    end
  end
end

