class HomeController < ApplicationController
  def index
    @codes = Code.all
    @code = Code.new        
  end
end

