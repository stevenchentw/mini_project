class Group < ActiveRecord::Base
  has_many :qrcode_groupships
  has_many :qrcodes, :through => :qrcode_groupships
  belongs_to :category
end
