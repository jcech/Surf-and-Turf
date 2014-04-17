class SearchesController < ApplicationController

  def index
    @searches = Search.by_listing(params[:search])
  end
end
