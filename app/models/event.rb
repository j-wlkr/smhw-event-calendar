class Event < ApplicationRecord
  validates :start_date, :end_date, :title, :description, :teacher, presence: true
  validates :title, length: { minimum: 1 }
  validates :description, length: { minimum: 1 }
  validates :teacher, length: { minimum: 1 }
end
