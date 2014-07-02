class SiteController < ApplicationController

  def index
    flash.now[:alert] = "No URL yet"
    flash.now[:notice] = "Haha, you are funny"
  end

  def privacy
  end

  def terms
  end

end