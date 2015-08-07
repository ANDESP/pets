class Service < ActiveRecord::Base
    validates :servicio, presence: true
    validates :servicio, length: { minimum: 5 }
    validates :costo, presence: true
end
