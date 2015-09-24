require 'rails_helper'

module Finances
  describe "Balance" do
    it "builds the balance for given entries" do
      params1 = Hash.new
      params1[:entry] = { "amount" => "27,13", "description" => "Resultado de Novembro" }

      Delorean.time_travel_to("09-22-2015")

      entry1 = CreateEntry.new(params1)
      entry1.save

      balance = IndexEntryPage.new

      expected_balance1 = [
        { date: "22-09-2015", amount: "27,13", description: "Resultado de Novembro", kind: "entry" },
        { date: "22-09-2015", amount: "27,13", description: "", kind: "patrimony" }
      ]

      assert_equal(expected_balance1, balance.rows)

      Delorean.time_travel_to("09-25-2015")

      params2 = Hash.new
      params2[:entry] = { "amount" => "-18,05", "description" => "Retirada de prolabore." }

      entry2 = CreateEntry.new(params2)
      entry2.save

      balance2 = IndexEntryPage.new

      expected_balance2 = [
        { date: "22-09-2015", amount: "27,13", description: "Resultado de Novembro", kind: "entry" },
        { date: "22-09-2015", amount: "27,13", description: "", kind: "patrimony" },
        { date: "25-09-2015", amount: "-18,05", description: "Retirada de prolabore.", kind: "entry" },
        { date: "25-09-2015", amount: "9,08", description: "", kind: "patrimony" }
      ]

      assert_equal(expected_balance2, balance2.rows)
    end
  end
end
