class StaticPagesController < ApplicationController
  def index
    @title = "Memory Keep"
    @user = current_user
  end

  def about
    @title = "About Us"
    @user = current_user
  end

  def contact
    @title = "Contact Us"
    @user = current_user
  end
end
