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

  end
end
