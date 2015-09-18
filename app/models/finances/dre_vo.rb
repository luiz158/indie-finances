module Finances
  class DreVO

    include DreAttributes

    def initialize(params)
      @resource = Dre.find(params[:id])
    end

    def id
      @resource.id
    end

  end
end


