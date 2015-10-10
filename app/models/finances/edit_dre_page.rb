module Finances
  class EditDrePage
    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes

    def initialize(params)
      @resource = Dre.find(params[:id])
    end

    def id
      @resource.id
    end

    def month
      @resource.month
    end

    def year
      @resource.year
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

