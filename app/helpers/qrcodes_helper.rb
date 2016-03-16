module QrcodesHelper

	def setup_qrcode(qrcode)
    qrcode.build_location unless qrcode.location
    qrcode
end
end
