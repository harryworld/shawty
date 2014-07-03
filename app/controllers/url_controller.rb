class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    url = Url.new
    url.original = params[:url]

    if url.save
      render :create
    else
      # where to go
      render :text, "Error"
    end
  end

end