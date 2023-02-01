class Center < ApplicationRecord
  belongs_to :city
  belongs_to :country
  belongs_to :region
  belongs_to :zone
  has_many :assignments
  has_many :locations, :through => :assignments

  scope :address_search, -> (q) { where("text(address) ILIKE '%#{q}%'") }

  def self.ransackable_scopes(_auth_object = nill )
    [ :address_search ]
  end
end

