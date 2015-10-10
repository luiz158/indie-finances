module Finances
  class IndexDrePage

    attr_accessor :dres

    def initialize
      @dres = IndexDrePage.all
    end

    def self.all
      dres = []
      Dre.order("created_at").all.each do |dre|
        dres << DrePage.new({:id => dre.id })
      end
      dres
    end

    def attributes
      DreAttributes.dre_fields | DreAttributes.extra_fields
    end

    BLACK_LIST = %w{zencoder_dollars heroku_dollars amazon_dollars}

    def report_attributes
      attributes.reject { |attr| BLACK_LIST.include?(attr.keys.first) }
    end
  end
end
