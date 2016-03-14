class AddNameToQrcodes < ActiveRecord::Migration
  
  def change
  	add_column :qrcodes, :name, :string
  end
end
