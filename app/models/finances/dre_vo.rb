module Finances
  class DreVO

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
  end
end


