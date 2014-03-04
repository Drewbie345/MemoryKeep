class AddStoryIdToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :story
    end
  end
end
