class Record < ApplicationRecord
  belongs_to :meal
  scope :latest_record, -> { order(:time).last }
end
