class InvitesController < ApplicationController

  def index

  end

  def show
    @invite = Invite.find(params[:id])
    @token = params[:token]

    if @invite.token != @token
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  def edit
    @invite = Invite.find(params[:id])
    @token = params[:token]

    if @invite.token != @token
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  def update
    @invite = Invite.find(params[:id])
    @token = params[:token]

    if @invite.update(invite_params) && @invite.token == @token
      flash[:success] = 'Details Saved'
      redirect_to :action => 'show', :token => @invite.token
    else
      flash[:error] = 'There is something wrong with your RSVP URL.'
      redirect_to root_path
    end
  end

  private

  def invite_params
    params.require(:invite).permit(:name, :email, :phone, :num_guests, :status, :token)
  end

end