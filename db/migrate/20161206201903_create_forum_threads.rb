class CreateForumThreads < ActiveRecord::Migration[5.0]
  def change
    create_table :forum_threads do |t|
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
