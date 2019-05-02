class HomePageController < ApplicationController
  def index

  	@gossip = Gossip.all

  end
  
end
