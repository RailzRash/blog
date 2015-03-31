class SkyblogsController < ApplicationController
 before_action :set_skyblog, only: [:show, :edit, :update, :destroy]
def index
	@skyblogs = Skyblog.all
end

def show
end

def new
	@skyblog = Skyblog.new
end

def create 
	@skyblog = Skyblog.new(skyblog_params)
	@skyblog.save
	redirect_to @skyblog
end

def update
	@skyblog.update(skyblog_params)
    redirect_to @skyblog
end

def edit
end

private 

def set_skyblog
 @skyblog = Skyblog.find(params[:id])
end

def skyblog_params
	params.require(:skyblog).permit(:title, :content)
end

end
