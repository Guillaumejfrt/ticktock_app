# == Schema Information
#
# Table name: watches
#
#  id          :integer          not null, primary key
#  brand       :string
#  price       :integer
#  gender      :string
#  mechanism   :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_watches_on_user_id  (user_id)
#

class Watch < ApplicationRecord
  GENDERS = %w(woman man mixt)
  MECHANISMS = %w(automatic manual)
  BRANDS = %w(Rolex Accurist ADINA-Watches Adriatica A.L.B-Atelier Le-Brézéguet Alpina-Watches American Waltham-Watch-Company Andrea-Strehler Anonimo Ansonia-Clock-Company)

  belongs_to :user
  has_many :rentals, dependent: :nullify

  validates :brand, :price, :gender, :mechanism, presence: true
  validates :brand, inclusion: { in: BRANDS}
  validates :gender, inclusion: { in: GENDERS }
  validates :mechanism, inclusion: { in: MECHANISMS }
  validates :price, :numericality => true
end
