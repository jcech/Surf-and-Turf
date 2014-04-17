class SearchesController < ApplicationController

  def index
    @results = Search.by_listing(params[:search])
  end
end
