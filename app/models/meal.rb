class Meal < ApplicationRecord
  # ======= description about Meal table schema ===========
  # time_zone_num column is correspond to time_zone
  # breakfirst = 0
  # lunch = 1
  # dinner = 2
  # ===============================================
  scope :todays_meal, -> { where(date: Time.now.to_date) }
  scope :todays_latest_meal, -> { todays_meal.order(:time_zone_num).last }
end
