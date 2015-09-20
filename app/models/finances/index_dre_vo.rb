module Finances
  class IndexDreVO

    attr_accessor :dres

    def initialize
      @dres = IndexDreVO.all
    end

    def self.all
      dres = []
      Dre.all.each do |dre|
        dres << DreVO.new({:id => dre.id })
      end
      dres
    end

    def attributes
      DreAttributes.dre_fields | ["Custo total"]
    end
  end
end
