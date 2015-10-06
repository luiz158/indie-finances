module Finances
  class IndexDrePage

    attr_accessor :dres

    def initialize
      @dres = IndexDrePage.all
    end

    def self.all
      dres = []
      Dre.all.each do |dre|
        dres << DrePage.new({:id => dre.id })
      end
      dres
    end

    def attributes
      DreAttributes.dre_fields | DreAttributes.extra_fields
    end
  end
end
