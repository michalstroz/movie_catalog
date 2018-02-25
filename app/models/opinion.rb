class Opinion < ApplicationRecord
  validates :user_name, presence: true
  validates :user_surname, presence: true
  validates :rate, presence: true
  validates :comment, presence: true, length: { in: 5..1000 }

  belongs_to :movie
end
