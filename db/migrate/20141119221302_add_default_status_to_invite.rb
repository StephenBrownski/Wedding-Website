class AddDefaultStatusToInvite < ActiveRecord::Migration
  def change
    change_column :invites, :status, :string, :default => 'Awaiting Reply'
  end
end
