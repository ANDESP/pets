class Product < ActiveRecord::Base
    validates :producto, presence: true
    validates :producto, length: { minimum: 5 }
    validates :costo, presence: true
end
