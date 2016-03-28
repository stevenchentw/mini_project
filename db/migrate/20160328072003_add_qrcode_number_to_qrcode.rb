class AddQrcodeNumberToQrcode < ActiveRecord::Migration
  def change
    add_column :qrcodes, :qrcodenumber, :integer
  end
end
