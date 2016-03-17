class QrcodesController < ApplicationController

 before_action :set_qrcode, :only => [:show, :edit, :update, :destroy]

 def index
    @qrcodes = Qrcode.page(params[:page]).per(5)
 end

 def destroy
    @qrcode.delete
    redirect_to qrcodes_path
    flash[:alert] = "不~你刪除他了"
 end

 def show
    @page_title = @qrcode.code
 end

 def new
 	@qrcode = Qrcode.new
 end

 def create

    @qrcode = Qrcode.new( qrcode_params )

    if @qrcode.save
       redirect_to qrcodes_path
       flash[:notice] = "耶~又多了一筆資料"
    else
       render :action => :new
    end
 end

 def edit
 end

 def update
 	  if @qrcode.update( qrcode_params )
       redirect_to qrcode_path(@qrcode)
       flash[:notice] = "可惡. 竟然被你修改成功了"
    else
        render :action => :edit
    end

 end

private

def set_qrcode
   @qrcode = Qrcode.find(params[:id])
end

def qrcode_params
  params.require(:qrcode).permit(:code, :description, :category_id, :location_attributes => [:id, :name, :_destroy], :group_ids => [] )
end


end
