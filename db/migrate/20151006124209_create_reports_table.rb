class CreateReportsTable < ActiveRecord::Migration
  def change
    create_table :finances_reports do |t|
      t.string :name
      t.string :description
      t.text :snapshot
      t.string :title
      t.timestamps
    end
  end
end
