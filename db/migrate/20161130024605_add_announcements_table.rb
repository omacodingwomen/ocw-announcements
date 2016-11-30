class AddAnnouncementsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :email
      t.string :twitter_handle
      t.text :custom_text
      t.string :image_url
      t.integer :template_id
      t.integer :report_count
      t.timestamps
    end
  end
end
