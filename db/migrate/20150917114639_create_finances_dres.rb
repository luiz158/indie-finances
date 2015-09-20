class CreateFinancesDres < ActiveRecord::Migration
  def change
    create_table :finances_dres do |t|
      t.string :name
      t.integer :adwords
      t.integer :facebook_ad
      t.integer :facebook_paid_publications
      t.integer :zencoder_dollars
      t.integer :zencoder_reais
      t.integer :heroku_dollars
      t.integer :heroku_reais
      t.integer :pagseguro
      t.integer :amazon_dollars
      t.integer :amazon_reais
      t.integer :paypal
      t.integer :revenues

      t.timestamps
    end
  end
end
