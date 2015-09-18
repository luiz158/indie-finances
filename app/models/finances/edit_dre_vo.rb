module Finances
  class EditDreVO
    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    def initialize(params)
      @resource = Dre.find(params[:id])
    end

    def attributes
      ["pagseguro"]
    end

    def pagseguro
      @resource.pagseguro
    end

    def id
      @resource.id
    end

    def persisted?
      @resource.persisted?
    end

    def errors
      []
    end
  end
end

