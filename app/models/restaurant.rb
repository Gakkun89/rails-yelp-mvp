class Restaurant < ApplicationRecord
  CATEGORIES = %w[japanese chinese french indian mexican BBQ belgian italian]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
