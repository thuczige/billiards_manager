class Feedback < ApplicationRecord
  belongs_to :user
  enum status: {
    pending: 0,
    resolved: 1,
    replied: 2,
    closed: 3
  }
end
