class Story < ActiveRecord::Base
  has_many :comments
  has_many :keyword_stories, dependent: :destroy
  has_many :keywords, through: :keyword_stories
  belongs_to :user

  after_destroy :check_for_orphaned_keywords

  def check_for_orphaned_keywords
    
  end
  
end
