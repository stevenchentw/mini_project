class AddStatusToQrcodes < ActiveRecord::Migration
  

  def change
    add_column :qrcodes, :status, :string
    
  end

end

