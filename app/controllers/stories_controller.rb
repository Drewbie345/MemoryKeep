class StoriesController < ApplicationController
  def all
    @stories = Story.all
  end

  def index
    @stories = Story.find_by(user_id)
  end

  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(story_params)
    @story.save
    redirect_to '/users/:user_id/stories'
  end

  def edit
    @story = Story.find(params[:id])

  end

  def show
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    @story.save
    redirect_to '/users/:user_id/stories'
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to '/users/:user_id/stories'
  end
end
