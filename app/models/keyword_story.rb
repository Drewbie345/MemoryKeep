class KeywordStory < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :story
end
