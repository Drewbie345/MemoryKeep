class AddUserIdToStory < ActiveRecord::Migration
  def change
    change_table :stories do |t|
      t.references :user
    end
  end
end
