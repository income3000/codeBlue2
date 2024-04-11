class DaSearchController < ApplicationController
  def index
    @das = das
  end



  def das 
    query = Da.ransack(name_cont: search_query)
    @das = query.result(distance: true)

  end

  def search_query
    params[:query]
  end

end
