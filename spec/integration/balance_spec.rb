require 'rails_helper'

module Finances
  describe "Balance" do
    it "builds the balance for given entries" do
      params1 = Hash.new
      params1[:entry] = { credit: 27, debit: 0, description: "Resultado de Novembro" }

      Delorean.time_travel_to("09-22-2015")

      entry1 = CreateEntryPage.new(params1)
      entry1.save

      balance = ShowBalancePage.new

      class FakeShowBalancePage
        def rows
          [
            { date: "09-22-2015", amount: "27", description: "Resultado de Novembro", kind: "entry" },
            { date: "09-22-2015", amount: "27", description: "", kind: "balance" }
          ]
        end
      end
      expected_balance = FakeShowBalancePage.new

      assert_equal(expected_balance.rows, balance.rows)
    end
  end
end
