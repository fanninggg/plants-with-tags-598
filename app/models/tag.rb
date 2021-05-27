class Tag < ApplicationRecord
	has_many :plant_types
	has_many :plants, through: :plant_types
end
