class Event < ApplicationRecord
  validates :start_date, :end_date, :title, :description, :teacher, presence: true
end
