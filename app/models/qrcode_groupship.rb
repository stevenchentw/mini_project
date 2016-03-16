class QrcodeGroupship < ActiveRecord::Base
  belongs_to :qrcode
  belongs_to :group
end
