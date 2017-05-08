class StoriesController < ApplicationController


def create
  @story = Story.find(params[:id])
  @character = Character.new(params[:character])
    render :action => 'new'
 end

  def edit
      @story = Story.find(params[:id])
    end

def update
      @story = Story.find(params[:id])
     render :action => 'edit'
  end

def show
  @story = Story.find(params[:id])
end

def index
  @stories = Story.all
 end

def guess
  @story = Story.find(params[:id])
end


  def destroy
      @story = Story.find(params[:id])
      @story.destroy
      redirect_to stories_url
   end
end
