class User < ApplicationRecord
  has_many :payments
  has_many :feedbacks
  belongs_to :branch

  enum status: { deleted: 0, active: 1, inactive: 2 }
end
