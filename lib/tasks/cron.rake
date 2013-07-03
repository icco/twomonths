task :cron do
  User.all.find_each do |user|
    if (Time.now - user.pings.order("created_at DESC").first.created_at) > 24*60*60
      if user.telephone
        Ping.new(:user => user, :method => :txt).delay.deliver
      end
    end
  end
end
