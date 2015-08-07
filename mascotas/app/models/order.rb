class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :product
  belongs_to :service
end
