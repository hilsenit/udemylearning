class PagesController < ApplicationController
  layout "portfolio"
  def home
  	@posts = Blog.all
  	@page_title = "Mine blog posts "
    @user = User.last
  end

  def about
  	@page_title = "Om Hilsen IT"
  end


  def contact
  	@page_title = "Kontakt"

  end
end
