class Location < ApplicationRecord
  belongs_to :type
  belongs_to :category
  belongs_to :current
  belongs_to :depth
  belongs_to :visibility
  has_many :assignments
  has_many :centers, :through => :assignments
end
