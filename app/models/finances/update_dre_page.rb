module Finances
  class UpdateDrePage
    extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming
    extend ActiveModel::Translation

    include DreAttributes
    include Commom

    def initialize(params)
      @resource = Dre.find(params[:id])
      @resource.update_attributes(sanitized_params(params[:dre]))
    end

    def id
      @resource.id
    end

    def save
      @resource.name = I18n.l("#{@resource.year}-#{@resource.month}-01".to_date, :format => "%B") + "/" + @resource.year.to_s
      @resource.save
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

