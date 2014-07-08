class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :authenticate_user!, :except => [:create]

  def index
  end

  def create
    @url = Url.new
    @url.original = params[:url]

    if @url.save
      render :create
    else
      # where to go
      render :text, "Error"
    end
  end

end