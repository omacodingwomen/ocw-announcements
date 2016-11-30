class CreateAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :text
      t.string :twitter_handle

      t.timestamps
    end
  end
end
