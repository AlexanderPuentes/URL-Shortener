class ShortenersController < ApplicationController
  def index
    @url = Shortener.new
  end

  def show
    shorturl = Shortener.find(params[:id])
    redirect_to shorturl.longurl
  end

  def create
   @url = Shortener.new(url_params)
   if @url.longurl.include?("https://") || @url.longurl.include?("http://")
     @url.longurl
   else
     @url.longurl = "https://#{@url.longurl}"
   end

   if @url.save
     redirect_to root_path
   end

 end

  private
  def url_params
    params.require(:shortener).permit(:longurl)
  end
end
