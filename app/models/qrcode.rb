class Qrcode < ActiveRecord::Base
	validates_presence_of :code
end
