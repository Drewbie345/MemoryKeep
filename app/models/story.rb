class Story < ActiveRecord::Base
  has_many :comments
  has_many :keyword_stories, dependent: :destroy
  has_many :keywords, through: :keyword_stories
  belongs_to :user

  after_destroy :check_for_orphaned_keywords
  mount_uploader :attachment, ImageUploader

  # before_save :add_keywords

  def check_for_orphaned_keywords
    
  end

  # def add_keywords(params)
  #   params[:keywords].each do |kw|
  #     Keyword.create()
  #   end
  # end
  
end
