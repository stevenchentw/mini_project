class AddChickphotoToQrcode < ActiveRecord::Migration
  def change
    add_attachment :qrcodes, :photo
  end
end
