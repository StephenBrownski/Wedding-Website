class AddRsvpFields < ActiveRecord::Migration
  def change
    add_column :rsvps, :diet, :string
    add_column :rsvps, :songs, :string
  end
end
