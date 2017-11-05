class AddTimeZoneNumToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :time_zone_num, :integer
  end
end
