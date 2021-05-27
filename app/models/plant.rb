class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_types
  has_many :tags, through: :plant_types

  validates :name, :image_url, presence: true
end
