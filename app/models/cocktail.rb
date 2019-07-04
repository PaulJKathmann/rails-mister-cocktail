class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates_uniqueness_of :user_id, scope: [:question_id]
end
