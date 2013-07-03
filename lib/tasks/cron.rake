task :cron => :environment do
  User.find_each do |user|
    if user.pings.empty? or ((Time.now - user.pings.order("created_at DESC").first.created_at) > 24*60*60)
      if user.telephone
        ping = Ping.new(:user => user, :method => :txt)
        ping.save
        ping.deliver
      end
    end
  end
end
