task :update_status => :environment do
  puts "===== Updating status of all invites where nil"
  Invite.where(:status => nil).each do |i|

    i.status = 'Awaiting Reply'
    i.save
  end
end