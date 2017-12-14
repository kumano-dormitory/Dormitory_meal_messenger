class Record < ApplicationRecord
  belongs_to :meal
  scope :newer, -> { order(time: :desc) }

  def self.latest
    newer.first
  end
end
