class Meal < ApplicationRecord
  has_many :records
  # ======= description about Meal table schema ===========
  # time_zone_num column is correspond to time_zone
  # breakfirst = 0
  # lunch = 1
  # dinner = 2
  # ===============================================
  scope :todays_meal, -> { where(date: Time.now.to_date) }
  scope :newer, -> { order(time_zone_num: :desc) }

  def self.todays_latest
    todays_meal.newer.last
  end
end
