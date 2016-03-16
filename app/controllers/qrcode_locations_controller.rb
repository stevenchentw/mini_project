class QrcodeLocationsController < ApplicationController
  before_action :find_qrcode

  def show
    @location = @qrcode.location
  end

  def new
    @location = @qrcode.build_location
  end

  def create
    @location = @qrcode.build_location( location_params )
    if @location.save
      redirect_to qrcode_location_url( @qrcode )
    else
      render :action => :new
    end
  end

  def edit
    @location = @qrcode.location
  end

  def update
    @location = @qrcode.location

    if @location.update( location_params )
      redirect_to qrcode_location_url( @qrcode )
    else
      render :action => :edit
    end

  end

  def destroy
    @location = @qrcode.location
    @location.destroy

    redirect_to qrcode_location_url( @qrcode )
  end

  protected

  def find_qrcode
    @qrcode = Qrcode.find( params[:qrcode_id] )
  end

  def location_params
    params.require(:location).permit(:name)
  end
end