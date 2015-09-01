class WelcomeController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC')
  end

  def khmer
    @events = Event.khmer.order('created_at DESC')
  end
  def western
    @events = Event.western.order('created_at DESC')
  end
end
