class StoriesController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:all]
  
  def all
    @user = current_user
  end

  def index
    @user = current_user
  end

  def new
    @user = current_user
  end
  
  def create
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
    @user = current_user
  end

  def destroy
    @user = current_user
  end
end
