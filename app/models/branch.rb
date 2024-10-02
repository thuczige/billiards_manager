class Branch < ApplicationRecord
  belongs_to :store
  belongs_to :user
  has_many :tables
  has_many :members
end
