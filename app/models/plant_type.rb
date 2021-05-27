class PlantType < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
end
