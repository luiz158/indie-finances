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

    self.dre_fields.each do |field_name|
      delegate(field_name.to_sym, { :to => :"@resource" })
    end
  end

end

