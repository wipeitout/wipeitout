class HomeController < ApplicationController
  def index
    @supporter_count = Supporter.all.count
  end

end
