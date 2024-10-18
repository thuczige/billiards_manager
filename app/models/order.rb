class Order < ApplicationRecord
  belongs_to :setting
  has_many :items
end
