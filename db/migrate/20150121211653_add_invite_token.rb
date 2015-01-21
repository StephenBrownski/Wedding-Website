class AddInviteToken < ActiveRecord::Migration
  def change
    add_column :invites,
      :token,
      :string,
      :null => false,
      :default => '1234567890'
  end
end
