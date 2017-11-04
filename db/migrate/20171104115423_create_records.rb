class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.references :meal, foreign_key: true
      t.time :time
      t.integer :left

      t.timestamps
    end
  end
end
