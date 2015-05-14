class RemoveDefaultRsvpStatus < ActiveRecord::Migration
  def change
    change_column :rsvps, :status, :string, :default => nil
  end
end
