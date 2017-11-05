class Meal < ApplicationRecord
  scope :todays_meal, -> { where(date: Time.now.to_date) }
end
