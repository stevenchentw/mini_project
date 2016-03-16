class AddCategoryIdToQrcode < ActiveRecord::Migration
  def change
    add_column :qrcodes, :category_id, :integer
  end
end
