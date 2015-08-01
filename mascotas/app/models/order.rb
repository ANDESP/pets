class Order < ActiveRecord::Base
  belongs_to :pacient
  belongs_to :product
  belongs_to :service
end
