class Book < ApplicationRecord
    has_many :publisher
    has_many :category
end
