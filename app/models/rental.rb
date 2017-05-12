# == Schema Information
#
# Table name: rentals
#
#  id         :integer          not null, primary key
#  start_date :datetime
#  end_date   :datetime
#  rent_price :integer
#  user_id    :integer
#  watch_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_rentals_on_user_id   (user_id)
#  index_rentals_on_watch_id  (watch_id)
#

class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  validates :start_date, :end_date, presence: true
  validate :end_date_cannot_precede_start_date

  def end_date_cannot_precede_start_date
    if end_date < start_date
      errors.add(:end_date, "can't precede rental start date")
    end
  end
end
