module Finances
  module MoneyHelper

    include ActionView::Helpers::NumberHelper

    def to_money_unit(value)
      amount = (value.to_f / 100)
      if amount == 0
        0
      else
        number_to_currency(amount, unit: "", separator: ",", delimiter: ".")
      end
    end

  end
end
