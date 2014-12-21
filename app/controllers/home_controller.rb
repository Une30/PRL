class HomeController < ApplicationController

  def index
  	@slides = Picture.where('inslide = 1')
  end
end
