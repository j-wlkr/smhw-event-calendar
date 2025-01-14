class Event < ApplicationRecord
  validates :start_date, :end_date, :title, :description, :teacher, presence: true
  validates :title, length: { minimum: 1 }
  validates :description, length: { minimum: 1 }
  validates :teacher, length: { minimum: 1 }
  validate :end_date_is_after_start_date

  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end
end
