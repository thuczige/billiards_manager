class Bill < ApplicationRecord
  belongs_to :branch
  has_many :items
end
