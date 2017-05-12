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