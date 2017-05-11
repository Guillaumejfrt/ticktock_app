class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  validates :start_date, :end_date, presence: true
  # validate :end_date_precede_start_date

  # def end_date_precede_start_date
  #   if end_date >= start_time
  #     errors.add(:end_date, "can't precede rental start date")
  #     end
  #   end
  # end
end
