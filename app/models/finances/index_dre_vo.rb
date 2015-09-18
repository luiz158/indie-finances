module Finances
  class IndexDreVO

    def self.all
      dres = []
      Dre.all.each do |dre|
        dres << DreVO.new({:id => dre.id })
      end
      dres
    end

  end
end
