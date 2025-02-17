class CommentsController < ApplicationController
before_action :set_incident

def create
  @incident.comments.create! params.required(:comment).permit(:content)
  redirect_to @incident
end

private

  def set_incident
    @incident = Incident.find(params[:incident_id])
  end
end
