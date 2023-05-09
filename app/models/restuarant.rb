class Restuarant < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
