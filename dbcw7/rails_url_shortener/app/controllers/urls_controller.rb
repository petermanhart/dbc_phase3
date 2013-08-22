class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end

  def new
    @url = Url.new()
  end

  def create
    @url = Url.new(params[:url])
    if @url.save()
      redirect_to root_path
    else
      p "ERRORS HERE:"
      p @url.errors
      @errors = @url.errors.full_messages
      render :index
    end
  end

  def expand
    p params[:short_url]
    url = Url.find_by_short_url(params[:short_url])
    redirect_to url.long_url
  end
end
