class StoriesController < SecureController
  skip_before_filter :authenticate_user!, :only => [:all]
  # before_action :set_user, except: [:all]
  
  def all
    
  end

  def index
  end

  def new
     # flash[:failure] = "Story was unsuccessfully created."
     # @story = current_user.stories.new 
     # render 'new'
  end
  
  def create
    @story = current_user.stories.new(title: story_params[:title], body: story_params[:body])
    if @story.save
      format_keywords(story_params[:keywords]).each do |kw|
        @story.keywords.create(tag: kw)
      end
      flash[:success] = 'Story was successfully created.'
      redirect_to @story
    else
      render action: 'new'#, flash[:failure] = 'Story was not created.'
    end    
  end

  def edit
    
  end

  def show
    # @story = @user.stories.last
    @story = Story.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end

  private

  # def set_user
  #   @user = current_user
  # end 

  def format_keywords(keywords_param)
    # keywordsArr = story_params[:keywords].split(',')
    keywordsArr = keywords_param.split(',')
    keywordsArr = keywordsArr.each {|x| x.strip! }
  end

  def story_params
    params.require(:story).permit(:title, :body, :keywords)
  end
end
