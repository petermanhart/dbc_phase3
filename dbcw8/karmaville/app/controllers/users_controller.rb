class UsersController < ApplicationController
  def index
    @users = User.page(1) 
    @start_page = 1
    @end_page = 5
  end

  def page
    @users = User.page(params[:page_id]) 
    @start_page = params[:page_id]
    @end_page = (params[:page_id].to_i + 5).to_s
    @start_page.to_i > 1 ? @prev = (@start_page.to_i - 1).to_s : @prev = nil
    @end_page.to_i < (User.count)/20 ? @next = (@end_page.to_i + 1).to_s : @next = nil 
    render :index
  end
end
