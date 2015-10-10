module Finances

  class CreateDrePage

    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes
    include Commom

    def initialize(params)
      @resource = Dre.new(sanitized_params(params[:dre]))
    end

    def persisted?
      false
    end

    def save
      @resource.name = I18n.l("#{@resource.year}-#{@resource.month}-01".to_date, :format => "%B") + "/" + @resource.year.to_s
      @resource.save
    end

    def errors
      []
    end

    def action_path
      "/finances/dres"
    end
  end

end

