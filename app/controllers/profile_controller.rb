class ProfileController < ApplicationController
  def index
    @officers = officers
    @judges = judges

  end

  def officers 
    query = Officer.ransack(name_cont: search_query)
    @officers = query.result(distance: true)

  end
  def das 
    query = Da.ransack(name_cont: search_query)
    @das = query.result(distance: true)

  end

  def judges
    query = Judge.ransack(rating_cont: search_query)
    @judges = query.result(distance: true)

  end

  
  def search_query
    params[:query]
  end

end
