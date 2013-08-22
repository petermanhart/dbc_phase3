class PostsController < ApplicationController

  def show
    title = params[:title].gsub!(/[-]/, " ")
    p @post = Post.find_by_title(title)
  end

  def redirect_show
    p title = params[:title].gsub!(/[-]/, " ")
    p @post = Post.find_by_title(title)
    p newtitle = @post.title.gsub!(/\s/, "-")
    redirect_to "/categories/#{@post.category.name}/posts/#{newtitle}"
  end 

end
