class AddIsAnnounceToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :is_announce, :boolean, :default => false
  end
end
