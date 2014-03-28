class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :about, :contact]
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
