class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :tag

      t.timestamps
    end
  end
end
