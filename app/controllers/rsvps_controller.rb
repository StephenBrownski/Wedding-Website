class RsvpsController < ApplicationController

  def index

  end

  def new
    @rsvp = Rsvp.new
  end

  def show
    @rsvp = Rsvp.find(params[:id])
    @token = params[:token]

    if @rsvp.token != @token
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  def edit
    @rsvp = Rsvp.find(params[:id])
    @token = params[:token]

    if @rsvp.token != @token
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save
      flash[:success] = 'Thank you for your RSVP!'

      # Tell the UserMailer to send a welcome email after save
      # RsvpMailer.confirmation_email(@rsvp).deliver

      redirect_to :action => 'new'
    end
  end

  def update
    @rsvp = Rsvp.find(params[:id])
    @token = params[:token]

    if @rsvp.update(rsvp_params) && @rsvp.token == @token
      flash[:success] = 'Details Saved'
      redirect_to :action => 'show', :token => @rsvp.token
    else
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :guests, :diet, :songs, :status, :token)
  end

end