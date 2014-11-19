class InvitesController < ApplicationController

  def index

  end

  def show
    @invite = Invite.find(params[:id])
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    @invite = Invite.find(params[:id])

    if @invite.update(invite_params)
      flash[:success] = 'Details Saved'
      redirect_to :action => 'show'
    end
  end

  private
    def invite_params
      params.require(:invite).permit(:name, :email, :phone, :num_guests, :status)
    end

end