class CharactersController < ApplicationController



def new
  @story = Story.find(params[:story_id])
  @character = character.new
end

def create
  @story = Story.find(params[:story_id])
  @character = @story.character.create(character_params)
  redirect_to story_path(@story)
end

def update
  @story = Story.find(params[:story_id])
  @character = Character.find(params[:id])
  @character.update(character_params)
  redirect_to story_path(@story)
end

def edit
  @story = Story.find(params[:story_id])
  @character = Character.find(params[:id])
end

def show
  @character = Character.find(params[:id])
  @story = Story.find(params[:id])

 end
end
