class Center < ApplicationRecord
  belongs_to :city

  scope :address_search, -> (q) { where("text(address) ILIKE '%#{q}%'") }

  def self.ransackable_scopes(_auth_object = nill )
    [ :address_search ]
  end
end

