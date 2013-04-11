class HomeController < ApplicationController
  def index
    video = Video.all.sample
    redirect_to video
  end
end
