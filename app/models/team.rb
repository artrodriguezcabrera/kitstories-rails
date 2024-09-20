class Team < ApplicationRecord
  belongs_to :federation
  accepts_nested_attributes_for :federation
end
