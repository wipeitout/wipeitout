class HomeController < ApplicationController
  def index
    @supporters = Supporter.find(:all)
  end

end
