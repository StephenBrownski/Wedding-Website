class PagesController < ApplicationController

  def index
    @page_title = 'Home'
  end

  def story
    @page_title = 'Our Story'
  end

  def wedding_party
    @page_title = 'Wedding Party'
  end

  def accommodations
    @page_title = 'Accommodations'
  end

  def registry
    @page_title = 'Gift Registry'
  end

  def rsvp
    @page_title = 'RSVP'
  end

end
