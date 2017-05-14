class PagesController < ApplicationController
  def about

  end

  def home
  	@posts = Blog.all
  end

  def contact

  end
end
