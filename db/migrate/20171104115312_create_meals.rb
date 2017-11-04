class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.date :date
      t.string :time_zone
      t.string :menu
      t.integer :multi_ticket_price
      t.integer :single_ticket_price
      t.boolean :soldout

      t.timestamps
    end
  end
end
