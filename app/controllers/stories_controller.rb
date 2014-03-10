class StoriesController < ApplicationController
  def all
    @stories = Story.all
  end

  def index
    # look at what resources is producing
    # and see what it is assigning the user_id to
    # you can look at your routes by running
    # rake routes on the directory of your rails project
    # or going to
    # localhost:3000/rails/info/routes
    # http://guides.rubyonrails.org/routing.html#listing-existing-routes

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
