class StaticPagesController < ApplicationController
  def home
    @title = "Memory Keep"
  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact Us"
  end
end
