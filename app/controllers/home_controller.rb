class HomeController < ApplicationController
  def index

     #@user_posts =  Community.joins(:comments).where("communities.id IN (?)", @posts).pluck("comments.title, comments.description")       
  end
end

