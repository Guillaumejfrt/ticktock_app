class Watch < ApplicationRecord
  GENDERS = %w(woman man)
  MECHANISMS = %w(automatic manual)
  BRANDS = %w(Accurist ADINA-Watches Adriatica A.L.B-Atelier Le-Brézéguet Alpina-Watches American Waltham-Watch-Company Andrea-Strehler Anonimo Ansonia-Clock-Company)

  belongs_to :user
  has_many :rentals, dependent: :nullify
  has_many :photos, dependent: :nullify
  # has_attachment :photos, accept: [:jpg, :png], maximum: 5

  # validates :photos, presence: true
  validates :brand, :price, :gender, :mechanism, presence: true
  validates :brand, inclusion: { in: BRANDS}
  validates :gender, inclusion: { in: GENDERS }
  validates :mechanism, inclusion: { in: MECHANISMS }
  validates :price, :numericality => true
end
