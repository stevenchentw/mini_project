class QrcodeAttendeesController < ApplicationController
	before_action :find_qrcode

def index
  @attendees = @qrcode.attendees
end

def show
  @attendee = @qrcode.attendees.find( params[:id] )
end

def new
  @attendee = @qrcode.attendees.build
end

def create
  @attendee = @qrcode.attendees.build( attendee_params )
  if @attendee.save
    redirect_to qrcode_attendees_url( @qrcode )
  else
    render :action => :new
  end
end

def edit
  @attendee = @qrcode.attendees.find( params[:id] )
end

def update
  @attendee = @qrcode.attendees.find( params[:id] )

  if @attendee.update( attendee_params )
    redirect_to qrcode_attendees_url( @qrcode )
  else
    render :action => :edit
  end

end

def destroy
  @attendee = @qrcode.attendees.find( params[:id] )
  @attendee.destroy

  redirect_to qrcode_attendees_url( @qrcode )
end

protected

def find_qrcode
  @qrcode = Qrcode.find( params[:qrcode_id] )
end

def attendee_params
	params.require(:attendee).permit(:name)
end
end
