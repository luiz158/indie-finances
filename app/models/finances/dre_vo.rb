module Finances
  class DreVO

    extend ActiveModel::Naming
    include DreAttributes

    def initialize(params)
      @resource = Dre.find(params[:id])
    end

    def id
      @resource.id
    end

  end
end


