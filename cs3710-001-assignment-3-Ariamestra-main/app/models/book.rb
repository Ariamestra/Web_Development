class Book < ApplicationRecord
  belongs_to :person
  has_and_belongs_to_many :libraries

  validates :title, presence: true, length: {in: 2..50}
   # ISBN 978-3-16-148410-0
  validates :isbn, presence: true, format: { with: /\AISBN \d{3}-\d-\d{3}-\d{5}-\d\z/ }

end
