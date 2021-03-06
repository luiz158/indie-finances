#encoding: utf-8
module Finances

  module DreAttributes

    include MoneyHelper

    def attributes
      DreAttributes.dre_fields | DreAttributes.extra_fields
    end

    def self.extra_fields
      [
        { "total_cost" => "Custo total" },
        { "profit" => "Resultado" }
      ]
    end

    def dre_fields
      DreAttributes.dre_fields
    end

    def self.dre_fields
      [
       { "name" => "Mês" },
       { "adwords" => "Google AdWords" },
       { "facebook_paid_publications" => "Alavancar Publicação (fb)" },
       { "facebook_ad" => "Facebook Ads" },
       { "zencoder_dollars" => "Zencoder ($)" },
       { "zencoder_reais" => "Zencoder (R$)" },
       { "heroku_dollars" => "Heroku ($)" },
       { "heroku_reais" => "Heroku (R$)" },
       { "pagseguro" => "PagSeguro" },
       { "paypal" => "Paypal" },
       { "amazon_dollars" => "Amazon ($)" },
       { "amazon_reais" => "Amazon (R$)" },
       { "revenues" => "Faturamento" }
      ]
    end

    def name
      @resource.name
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

    def revenues
      to_money_unit(@resource.revenues)
    end

    def total_cost
       to_money_unit(raw_total_cost)
    end

    def raw_total_cost
      [
        "adwords",
        "facebook_paid_publications",
        "facebook_ad",
        "zencoder_reais",
        "heroku_reais",
        "pagseguro",
        "paypal",
        "amazon_reais"
      ].sum do |field|
        @resource.send(field)
       end
    end

    def raw_profit
      @resource.revenues - raw_total_cost
    end

    def profit
      to_money_unit(raw_profit)
    end
  end

end

