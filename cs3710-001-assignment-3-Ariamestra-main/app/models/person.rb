class Person < ApplicationRecord
  has_many :books, dependent: :destroy
end
