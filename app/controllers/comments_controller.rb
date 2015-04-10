class CommentsController < ApplicationController
  def index
  	@commentable = Event.find(params[:event_id])
  	@comments = @commentable.comments
  end

  def new
  end
end
