class CreateEntriesTable < ActiveRecord::Migration
  def change
    create_table(:finances_entries) do |t|
      t.integer :amount
      t.datetime :date
      t.string :description
    end
  end
end
