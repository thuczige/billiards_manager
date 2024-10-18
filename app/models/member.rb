class Member < ApplicationRecord
  belongs_to :branch
  belongs_to :work_shift
end
