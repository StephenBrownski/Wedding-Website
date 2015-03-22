class ChangeGuestsFields < ActiveRecord::Migration
  def change
    remove_column :rsvps, :num_guests
    add_column :rsvps, :guests, :string
  end
end
