class User < ApplicationRecord
  has_many :payments
  has_many :feedbacks
  belongs_to :branch
end
