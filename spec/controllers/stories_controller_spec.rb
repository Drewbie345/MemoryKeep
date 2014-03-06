require 'spec_helper'

describe StoriesController do

  describe "GET 'show_stories'" do
    it "returns http success" do
      get 'show_stories'
      response.should be_success
    end
  end

end
