class CreateQrcodes < ActiveRecord::Migration
  def change
    create_table :qrcodes do |t|
      t.string :code
      t.text :description
      t.boolean :is_public
      t.string :capacitynteger

      t.timestamps null: false
    end
  end
end
