class Qrcode < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :code
	has_many :attendees
	has_many :qrcode_groupships
  has_many :groups, :through => :qrcode_groupships
  has_one :location
  accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank
  delegate :name, :to => :category, :prefix => true, :allow_nil => true
  delegate :name, :to => :location, :prefix => true, :allow_nil => true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
