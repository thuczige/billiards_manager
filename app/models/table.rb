class Table < ApplicationRecord
  belongs_to :branch

  enum type: {
    pool: 0,
    caroom: 1,
    snooker: 2
  }

  enum status: {
    inactive: 0,
    active: 1,
    reserved: 2,
    maintenance: 3,
    deleted: 4
  }
end
