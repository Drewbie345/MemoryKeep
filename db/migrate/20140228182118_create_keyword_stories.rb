class CreateKeywordStories < ActiveRecord::Migration
  def change
    create_table :keyword_stories do |t|
      t.references :keyword, index: true
      t.references :story, index: true

      t.timestamps
    end
  end
end
