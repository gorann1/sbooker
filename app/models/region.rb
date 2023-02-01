class Region < ApplicationRecord
  belongs_to :country
  belongs_to :zone
  has_many :cities
end
