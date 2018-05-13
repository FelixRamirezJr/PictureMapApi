class Location < ApplicationRecord
  belongs_to :user
  has_many :images

  validates :lat, presence: true
  validates :long, presence: true
end
