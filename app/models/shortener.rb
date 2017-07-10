class Shortener < ApplicationRecord
  validates :longurl, :presence => true
end
