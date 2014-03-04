class Story < ActiveRecord::Base
  has_many :comments
  has_many :keyword_stories
  has_many :keywords, through: :keyword_stories
  belongs_to :user
  
end
