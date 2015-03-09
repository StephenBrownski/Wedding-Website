module Admin

  class RsvpsController < AdminController

    def index
      @page_title = 'All RSVPs'
      @rsvps = Rsvp.all

    end

    def new
      @rsvp = Rsvp.new
    end

    def create
      @rsvp = Rsvp.new(rsvp_params)


      if @rsvp.save
        flash[:success] = 'RSVP Successfully Created'

        # Tell the UserMailer to send a welcome email after save
        RsvpMailer.confirmation_email(@rsvp).deliver

        redirect_to :action => 'index'
      end
    end

    def show
      @rsvp = Rsvp.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy
      @rsvp = Rsvp.find(params[:id])
      if @rsvp.destroy
        flash[:success] = 'RSVP Successfully Destroyed'
        redirect_to :action => 'index'
      end
    end

    private
      def rsvp_params
        params.require(:rsvp).permit(:name, :email, :phone, :num_guests, :status)
      end

  end

end