class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  #Validation
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY }
end
