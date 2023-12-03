class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def turbostreams
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
  def terms
  end

  def privacy
  end
end
