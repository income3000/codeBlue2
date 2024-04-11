class ProfileController < ApplicationController
  def index
    @officers = officers
  

  end

  def officers 
    query = Officer.ransack(name_cont: search_query)
    @officers = query.result(distance: true)

  end


 

  
  def search_query
    params[:query]
  end

end
