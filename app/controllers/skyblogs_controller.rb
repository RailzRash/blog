class SkyblogsController < ApplicationController

def index
	@skyblogs = Skyblog.all
end

def show
end

def new
	@skyblog = Skyblog.new
end

def create 
	@skyblog = Skyblog.new(Skyblog_params)
	@skyblog.save
	redirect_to root_path
end

def update
end

def edit
end

private 

def set_skyblog

end

def skyblog_params
	params.require(:skyblog).permit(:title, :content)
end

end
