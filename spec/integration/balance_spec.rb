require 'rails_helper'

module Finances
  describe "Balance" do
    it "builds the balance for given entries" do
      params1 = Hash.new
      params1[:entry] = { amount: 27, description: "Resultado de Novembro" }

      Delorean.time_travel_to("09-22-2015")

      entry1 = CreateEntryPage.new(params1)
      entry1.save

      balance = ShowBalancePage.new

      expected_balance = [
        { date: "22-09-2015", amount: "27", description: "Resultado de Novembro", kind: "entry" },
        { date: "22-09-2015", amount: "27", description: "", kind: "patrimony" }
      ]

      assert_equal(expected_balance, balance.rows)
    end
  end
end
