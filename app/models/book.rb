class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  validates :name, presence: true, uniqueness: true
    
end
