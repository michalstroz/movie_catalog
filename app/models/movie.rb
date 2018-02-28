class Movie < ApplicationRecord
  validates :title, presence: true
  validates :release, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :genres, presence: true
  validates :director, presence: true
  validates :writers, presence: true
  validates :country_of_origin, presence: true

  has_many :opinions, dependent: :destroy

end
