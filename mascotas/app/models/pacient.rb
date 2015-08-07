class Pacient < ActiveRecord::Base
  belongs_to :client
  validates :mascota, presence: true
  validates :mascota, length: { minimum: 3 }  
  validates :client_id, presence: true

  has_attached_file :avatar1, 
  :styles => { :medium => "300x300>", 
  :thumb => "100x100>", 
  :small => "50x50>"},
  :default_url => "/images/:style/missing.png"
  
  # Validate two or more conditions
  validates_attachment :avatar1, :presence => true,
  :content_type => { :content_type => "image/jpeg" },
  :size => { :in => 0..1024.kilobytes }
end
