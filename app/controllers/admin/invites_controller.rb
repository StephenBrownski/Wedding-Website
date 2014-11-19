module Admin

  class InvitesController < AdminController

    def index
      @page_title = 'All Invites'
      @invites = Invite.all

    end

    def new
      @invite = Invite.new
    end

    def create
      @invite = Invite.new(invite_params)

      if @invite.save
        flash[:success] = 'Invite Successfully Created'
        redirect_to :action => 'index'
      end
    end

    def show
      @invite = Invite.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy
      @invite = Invite.find(params[:id])
      if @invite.destroy
        flash[:success] = 'Invite Successfully Destroyed'
        redirect_to :action => 'index'
      end
    end

    private
      def invite_params
        params.require(:invite).permit(:name, :email, :phone, :num_guests, :status)
      end

  end

end