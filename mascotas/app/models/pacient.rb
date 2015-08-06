class Pacient < ActiveRecord::Base
  belongs_to :client
  validates :mascota, presence: true
end
