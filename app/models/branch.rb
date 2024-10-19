class Branch < ApplicationRecord
  belongs_to :store
  belongs_to :user
  belongs_to :address
  has_many :tables
  has_many :members

  enum status: {
    active: 0,
    closed: 1
  }
end
