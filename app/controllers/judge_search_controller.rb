class JudgeSearchController < ApplicationController
  def index
    @judges = judges
  end
  
  def judges
    query = Judge.ransack(name_cont: search_query)
    @judges = query.result(distance: true)

  end
   
  def search_query
    params[:query]
  end

end
