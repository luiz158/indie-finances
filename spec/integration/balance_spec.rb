require 'rails_helper'

module Finances
  describe "Balance" do
    it "builds the balance for given entries" do
      params1 = Hash.new
      params1[:entry] = { credit: 27, debit: 0, date: DateTime.parse("19-02-2015"), description: "Resultado de Novembro" }
      entry1 = CreateEntry.new(params1)
      entry1.save

      balance = ShowBalance.new

      class FakeShowBalance
        def rows
          [
            { date: "09-22-2015", amount: "27", description: "Resultado de Novembro", kind: "entry" },
            { date: "09-22-2015", amount: "27", description: "", kind: "balance" }
          ]
        end
      end
      expected_balance = FakeShowBalance.new

      assert_equal(expected_balance.rows, balance.rows)
    end
  end
end
