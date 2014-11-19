class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :name
      t.integer :num_guests
      t.string :status
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
