class Kit < ApplicationRecord
  belongs_to :team

  validates :kit, inclusion: { in: ['Home', 'Away'] }
  validates :brand, inclusion: { in: ['Adidas', 'Nike', 'Puma', 'Umbro', 'Macron', 'Kappa', 'Hummel', 'Diadora', 'Lotto', 'New Balance', 'Joma', 'Admiral', 'Errea', 'Marathon', 'Castore', 'Mizuno', 'Zeus'] }
  validates :league_finish, inclusion: { in: ['1st Place', '2nd Place', '3rd Place', '4th Place', '5th Place', '6th Place', '7th Place', '8th Place', '9th Place', '10th Place'] }
end
