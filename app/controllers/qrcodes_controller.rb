class QrcodesController < ApplicationController

 before_action :set_qrcode, :only => [:show, :edit, :update, :destroy]

 def index
    @qrcodes = Qrcode.all
 end

 def destroy
    @qrcode.delete
    redirect_to :action => :index
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
       redirect_to :action => :index
    else
       render :action => :new
    end
 end

 def edit
 end

 def update
 	  @qrcode.update( qrcode_params )

    redirect_to :action => :show, :id => @qrcode
 end

private

def set_qrcode
   @qrcode = Qrcode.find(params[:id])
end

def qrcode_params
  params.require(:qrcode).permit(:code, :description, :category_id, :location_attributes => [:id, :name, :_destroy], :group_ids => [] )
end


end
