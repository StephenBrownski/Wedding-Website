class PagesController < ApplicationController

  def index
    @page_title = 'Home'
    @page_description = "Stephen asked. Alex said yes. On August 15th, they're getting together in that legally binding sense."
  end

  def story
    @page_title = 'Our Story'
    @page_description = "Read about how it all went down..."
  end

  def wedding_party
    @page_title = 'Wedding Party'
    @page_description = "Read about the friends and family members who will be sharing our special day."
  end

  def accommodations
    @page_title = 'Accommodations'
    @page_description = "Are you visiting from out of town? Have we got a deal for you!"
  end

  def registry
    @page_title = 'Gift Registry'
    @page_description = "We think these things would be cool to have in our new place!"
  end

  def rsvp
    @page_title = 'RSVP'
    @page_description = "It's the future. Why not RSVP online?"
  end

end
