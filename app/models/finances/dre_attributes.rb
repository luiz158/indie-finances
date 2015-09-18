module Finances

  module DreAttributes

    def attributes
      DreAttributes.dre_fields
    end

    def self.dre_fields
      ["name",
       "pagseguro",
       "adwords",
       "facebook_ad",
       "facebook_paid_publications",
       "zencoder_dollars",
       "zencoder_reais",
       "heroku_dollars",
       "heroku_reais",
       "amazon_dollars",
       "amazon_reais",
       "paypal"]
    end

    def name
      to_money_unit(@resource.name)
    end

    def pagseguro
      to_money_unit(@resource.pagseguro)
    end

    def adwords
      to_money_unit(@resource.adwords)
    end

    def facebook_ad
      to_money_unit(@resource.facebook_ad)
    end

    def facebook_paid_publications
      to_money_unit(@resource.facebook_paid_publications)
    end

    def zencoder_dollars
      to_money_unit(@resource.zencoder_dollars)
    end

    def zencoder_reais
      to_money_unit(@resource.zencoder_reais)
    end

    def heroku_dollars
      to_money_unit(@resource.heroku_dollars)
    end

    def heroku_reais
      to_money_unit(@resource.heroku_reais)
    end

    def amazon_dollars
      to_money_unit(@resource.amazon_dollars)
    end

    def amazon_reais
      to_money_unit(@resource.amazon_reais)
    end

    def paypal
      to_money_unit(@resource.paypal)
    end

    def to_money_unit(value)
      value.to_f / 100
    end
  end

end

