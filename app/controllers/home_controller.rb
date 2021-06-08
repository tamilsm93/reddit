class HomeController < ApplicationController
  def index
    @posts = Post.pluck(:community_id)
    @user_posts =  Community.where(id: @posts).includes(:comments).map {|com| com.comments}.flatten
  end
end

