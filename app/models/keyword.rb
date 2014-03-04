class Keyword < ActiveRecord::Base
  has_many :keyword_stories
  has_many :stories, through: :keyword_stories
end
