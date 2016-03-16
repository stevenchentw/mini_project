class CreateQrcodeGroupships < ActiveRecord::Migration
  def change
    create_table :qrcode_groupships do |t|
      t.integer :qrcode_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
