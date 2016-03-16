class Qrcode < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :code
	has_many :attendees
	has_many :qrcode_groupships
  has_many :groups, :through => :event_groupships
  has_one :location
  accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank
end
